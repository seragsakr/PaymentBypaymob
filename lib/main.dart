import 'package:flutter/material.dart';
import 'package:payment/business_logic/cubit/payment_cubit.dart';
import 'package:payment/data/network/dio_helper.dart';
import 'package:payment/presentation/screens/Paymentscreen.dart';
import 'package:payment/shared/component/bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await DioHelper.init();
  BlocOverrides.runZoned(
    () {
      runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider<PaymentCubit>(create: (context) => PaymentCubit()),
          ],
          child: const Tager(),
        ),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class Tager extends StatelessWidget {
  const Tager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaymentPaymop(),
    );
  }
}
