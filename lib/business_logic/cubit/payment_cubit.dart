import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/data/models/payment/first_token_model.dart';
import 'package:payment/data/models/payment/order_id_model.dart';
import 'package:payment/data/network/dio_helper.dart';
import 'package:payment/shared/component/constants.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());
  static PaymentCubit get(context) => BlocProvider.of(context);
  FirstTokenModel? firsttoken;
  OrderIdModel? orderid;

// payment
  Future PaymentWithCard({
    required String firstname,
    required String lastname,
    required String email,
    required String phone,
    required int price,
    required String integrationmethod,
  }) async {
    DioHelper.postData(
        url: authenticationrequesturl,
        data: {"api_key": paymentApiKey}).then((value) {
      paymentFirstToken = value?.data['token'];
      print('first token is :$paymentFirstToken');
      getOrderId();
      getPaymentkeyToken(
          firstname: firstname,
          lastname: lastname,
          email: email,
          price: price,
          phone: phone,
          integrationmethod: integrationmethod);

      emit(PaymentSuccess());
    }).catchError((error) {
      print('error is :' + error.toString());
      emit(PaymentError(error.toString()));
    });
  }

// OrdeId
  Future getOrderId() async {
    DioHelper.postData(url: orderidurl, data: {
      'auth_token': paymentFirstToken,
      'delivery_needed': false,
      'amount_cents': '20000',
      "currency": "EGP",
      'items': [],
    }).then((value) {
      paymentOrderId = value!.data['id'].toString();
      print('orderid is :$paymentOrderId');

      emit(PaymentGetOrderIdSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(PaymentGetOrderIdError(error.toString()));
    });
  }

// PaymentkeyToken
  Future getPaymentkeyToken({
    required String firstname,
    required String lastname,
    required String email,
    required String phone,
    required int price,
    required String integrationmethod,
  }) async {
    DioHelper.postData(url: paymentkeytokenurl, data: {
      "auth_token": paymentFirstToken,
      "amount_cents": "${price * 100}",
      "expiration": 3600,
      "order_id": paymentOrderId,
      "billing_data": {
        "apartment": "NA",
        "email": email,
        "floor": "NA",
        "first_name": firstname,
        "street": "NA",
        "building": "NA",
        "phone_number": phone,
        "shipping_method": "NA",
        "postal_code": "NA",
        "city": "NA",
        "country": "NA",
        "last_name": lastname,
        "state": "NA"
      },
      "currency": "EGP",
      "integration_id": integrationmethod,
      "lock_order_when_paid": "false"
    }).then((value) {
      finalToken = value!.data['token'].toString();
      print('final token is :$finalToken');

      emit(PaymentkeyTokenSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(PaymentkeyTokenError(error.toString()));
    });
  }

//get ref code
  Future getRefererencCodeKiosk() async {
    DioHelper.postData(url: paymentReferencecodeurl, data: {
      "source": {"identifier": "AGGREGATOR", "subtype": "AGGREGATOR"},
      "payment_token": finalToken
    }).then((value) {
      print(value);
      refcode = value!.data['id'].toString();
      print('referance code is :$refcode');

      emit(PaymentkReferencecodeSuccess());
    }).catchError((error) {
      print(error.toString());
      emit(PaymentReferencecodeError(error.toString()));
    });
  }

//paymentKiosk
  Future paymentKiosk({
    required String firstname,
    required String lastname,
    required String email,
    required String phone,
    required int price,

  }) async {
    DioHelper.postData(
        url: authenticationrequesturl,
        data: {"api_key": paymentApiKey}).then((value) {
      paymentFirstToken = value?.data['token'];
      print('first token is :$paymentFirstToken');
      getOrderId();
      getPaymentkeyToken(
          firstname: firstname,
          lastname: lastname,
          email: email,
          price: price,
          phone: phone,
          integrationmethod: integrationIDKiosk);
      getRefererencCodeKiosk();

      emit(PaymentSuccess());
    }).catchError((error) {
      print('error is :' + error.toString());
      emit(PaymentError(error.toString()));
    });
  }
}
