import 'dart:async';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:payment/business_logic/cubit/payment_cubit.dart';
import 'package:payment/presentation/screens/Paymentscreen.dart';
import 'package:payment/shared/component/colors.dart';
import 'package:payment/shared/component/constants.dart';
import 'package:payment/shared/component/functions.dart';
import 'package:payment/shared/widget/customtext.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VisaScreen extends StatefulWidget {
  const VisaScreen({Key? key}) : super(key: key);

  @override
  VisaScreenState createState() => VisaScreenState();
}

class VisaScreenState extends State<VisaScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {},
      builder: (context, state) {
        final paymentCubit = PaymentCubit.get(context);

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
              data: 'Payment By Card',
              color: Colors.white,
            ),
            centerTitle: true,
          ),
          resizeToAvoidBottomInset: true,
          body: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl:
                'https://accept.paymob.com/api/acceptance/iframes/384421?payment_token=$finalToken',
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onProgress: (int progress) {
              print('WebView is loading (progress : $progress%)');
            },
            javascriptChannels: <JavascriptChannel>{
              _toasterJavascriptChannel(context),
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },
            onPageFinished: (String url) {
              print('Page finished loading: $url');
            },
            gestureNavigationEnabled: true,
            backgroundColor: const Color(0x00000000),
          ),
        );
      },
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}
