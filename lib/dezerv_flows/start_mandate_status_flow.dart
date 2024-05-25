import 'package:digia_ui/digia_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StartMandateStatusFlow extends StatelessWidget {
  const StartMandateStatusFlow({super.key});

  @override
  Widget build(BuildContext context) {
    // final args =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return DUIPage(
      pageUid: 'loading',
      onMessageReceived: (message) {
        switch (message.name) {
          case 'sipMandateSuccess':
            Navigator.pushNamed(
              context,
              '/digiaSipSuccess',
              arguments: {'mandate_id': '339'},
            );
            Fluttertoast.showToast(
                timeInSecForIosWeb: 2,
                msg: message.name + '      \n ' + message.body.toString());
        }
      },
      pageArgs: const {'mandate_id': '339'},
    );
  }
}
