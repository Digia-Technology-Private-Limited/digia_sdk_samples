import 'package:digia_ui/digia_ui.dart';
import 'package:flutter/material.dart';

class DigiaFirstPage extends StatelessWidget {
  const DigiaFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return DUIPage(
      pageUid: 'homepage',
      externalFunctionHandler: (con, methodId, data) {
        switch (methodId) {
          case 'goToNativeFirstPage':
            Navigator.pushNamed(
              context,
              '/nativeFirstPage',
              arguments: {
                "navigatedFrom": data['navigatedFrom'] as String,
              },
            );
          case 'goToNativeSecondPage':
            Navigator.pushNamed(
              context,
              '/nativeSecondPage',
              arguments: {"navigatedFrom": data['navigatedFrom'] as String},
            );
        }
      },
      pageArgs: {'navigatedFrom': args['navigatedFrom'] as String},
    );
  }
}
