import 'package:digia_ui/digia_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DigiaSecondPage extends StatelessWidget {
  const DigiaSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return DUIPage(
      pageUid: 'sipsuccess',
      onMessageReceived: (message) {
        switch (message.name) {
          case 'sipMandateSuccess':
            //   Navigator.pushNamed(
            //     context,
            //     '/nativeFirstPage',
            //     arguments: {
            //       "navigatedFrom": message.body?['navigatedFrom'] as String
            //     },
            //   );
            Fluttertoast.showToast(
                timeInSecForIosWeb: 2,
                msg: message.name + '      \n ' + message.body.toString());
          case 'goToNativeSecondPage':
            Navigator.pushNamed(
              context,
              '/nativeSecondPage',
              arguments: {
                "navigatedFrom": message.body?['navigatedFrom'] as String
              },
            );
        }
      },
      pageArgs: const {'mandate_id': '339'},
    );
  }
}
