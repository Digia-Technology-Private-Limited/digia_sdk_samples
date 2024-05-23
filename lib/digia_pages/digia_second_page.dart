import 'package:digia_ui/digia_ui.dart';
import 'package:flutter/material.dart';

class DigiaSecondPage extends StatelessWidget {
  const DigiaSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return DUIPage(
      pageUid: 'secondpage',
      onMessageReceived: (message) {
        switch (message.name) {
          case 'goToNativeFirstPage':
            Navigator.pushNamed(
              context,
              '/nativeFirstPage',
              arguments: {
                "navigatedFrom": message.body?['navigatedFrom'] as String
              },
            );
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
      pageArgs: {'navigatedFrom': args['navigatedFrom'] as String},
    );
  }
}
