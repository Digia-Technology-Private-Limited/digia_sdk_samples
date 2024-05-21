import 'package:digia_ui/digia_ui.dart';
import 'package:flutter/material.dart';

class DigiaSecondPage extends StatelessWidget {
  const DigiaSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DUIPage(
      pageUid: 'pageUid',
      externalFunctionHandler: (con, methodId, data) {
        switch(methodId){
          case 'goToNativeFirstPage':
            Navigator.pushNamed(context, '/nativeFirstPage');
          case 'goToNativeSecondPage':
            Navigator.pushNamed(context, '/nativeSecondPage');
        }
      },
    );
  }
}
