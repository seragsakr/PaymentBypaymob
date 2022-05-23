import 'package:flutter/material.dart';
import 'package:flash/flash.dart';
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false);
showdialog(context, String text, Color color,{double? fontsize=16}) {
  return showFlash(
      duration: const Duration(seconds: 5),
      context: context,
      builder: (context, controller) {
        return Flash.dialog(
            alignment: Alignment.bottomCenter,
            margin:const EdgeInsets.only(bottom: 70),
            backgroundColor: color,
            borderRadius: BorderRadius.circular(20),
            controller: controller,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.info_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      maxLines: 1,

                      style: TextStyle(color: Colors.white, fontSize: fontsize),
                    ),
                  ),
                ],
              ),
            ));
      });
}