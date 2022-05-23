import 'package:flutter/material.dart';
import 'package:payment/business_logic/cubit/payment_cubit.dart';
import 'package:payment/presentation/screens/Paymentscreen.dart';
import 'package:payment/shared/component/colors.dart';
import 'package:payment/shared/component/functions.dart';
import 'package:payment/shared/widget/customtext.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RefererencCode extends StatelessWidget {
  const RefererencCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              navigateAndFinish(context, PaymentPaymop());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: defcolor,
        title: CustomText(
          data: 'Payment By Reference Code',
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {},
        builder: (context, state) {
          final paymentCubit = PaymentCubit.get(context);

          return Container(
            color: Colors.blueGrey.shade100,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .4,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: defcolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: Image.asset(
                      'assets/pay.jpg',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    size: 20,
                    weight: FontWeight.bold,
                    data: 'You Should Go To Any Market To Pay',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    size: 15,
                    weight: FontWeight.bold,
                    data: 'This Reference Code',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .06,
                    width: MediaQuery.of(context).size.width * .4,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: defcolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: CustomText(data: paymentCubit.refcode),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
