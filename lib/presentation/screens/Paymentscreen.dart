import 'dart:async';

import 'package:flutter/material.dart';
import 'package:payment/business_logic/cubit/payment_cubit.dart';
import 'package:payment/presentation/screens/referencscreen.dart';
import 'package:payment/presentation/screens/visascreen.dart';
import 'package:payment/shared/component/colors.dart';
import 'package:payment/shared/component/constants.dart';
import 'package:payment/shared/component/functions.dart';
import 'package:payment/shared/widget/custombutton.dart';
import 'package:payment/shared/widget/customtext.dart';
import 'package:payment/shared/widget/customtextformfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class PaymentPaymop extends StatelessWidget {
  PaymentPaymop({Key? key}) : super(key: key);
  var firstnamecontroller = TextEditingController();
  var lastnamecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var pricecontroller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: defcolor,
        title: CustomText(
          data: 'Payment Integration',
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => PaymentCubit(),
        child: BlocConsumer<PaymentCubit, PaymentState>(
          listener: (context, state) {},
          builder: (context, state) {
            final paymentCubit = PaymentCubit.get(context);
            return Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      //firstname
                      CustomTextField(
                          controller: firstnamecontroller,
                          type: TextInputType.name,
                          prefix: Icons.person,
                          label: 'First Name',
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Required';
                            }
                            return null;
                          }),
                      //lastname
                      CustomTextField(
                          controller: lastnamecontroller,
                          type: TextInputType.name,
                          prefix: Icons.person,
                          label: 'Last Name',
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Required';
                            }
                            return null;
                          }),
                      //email
                      CustomTextField(
                          controller: emailcontroller,
                          type: TextInputType.emailAddress,
                          prefix: Icons.mail,
                          label: 'Email',
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Required';
                            }
                            return null;
                          }),
                      //phone
                      CustomTextField(
                          controller: phonecontroller,
                          type: TextInputType.number,
                          prefix: Icons.phone,
                          label: 'Phone',
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Required';
                            }
                            return null;
                          }),
                      //price
                      CustomTextField(
                          controller: pricecontroller,
                          type: TextInputType.number,
                          prefix: Icons.monetization_on_rounded,
                          label: 'Price',
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Required';
                            }
                            return null;
                          }),
                      //sizedbox
                      const SizedBox(
                        height: 10,
                      ),

                      //button
                      CustomButton(
                        radius: 15,
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .7,
                        color: defcolor,
                        text: 'Go To Pay',
                        onpressed: () async {
                          if (formKey.currentState!.validate()) {
                            paymentCubit.PaymentWithCard(
                              firstname: firstnamecontroller.text,
                              lastname: lastnamecontroller.text,
                              email: emailcontroller.text,
                              phone: phonecontroller.text,
                              price: int.parse(pricecontroller.text),
                              integrationmethod: integrationIDCard,
                            );

                            Timer(Duration(seconds: 5), ()=> Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const VisaScreen()
                                ))
                            );
                            showdialog(context,'Please wait...',defcolor);
                            // navigateTo(context, const VisaScreen());
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        radius: 15,
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .7,
                        color: defcolor,
                        text: 'Get Referance Code',
                        onpressed: () {
                          if (formKey.currentState!.validate()) {
                            paymentCubit.paymentKiosk(
                              firstname: firstnamecontroller.text,
                              lastname: lastnamecontroller.text,
                              email: emailcontroller.text,
                              phone: phonecontroller.text,
                              price: int.parse(pricecontroller.text),
                            );
                            // // await paymentCubit.getRefererencCodeKiosk();

                            Timer(Duration(seconds: 5), ()=> Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RefererencCode()
                              ))
                            );
                            showdialog(context,'Please wait...',defcolor);
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
