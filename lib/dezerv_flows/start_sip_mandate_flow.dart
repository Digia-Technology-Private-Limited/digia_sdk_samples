import 'package:digia_ui/digia_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StartSipAndMandateFlow extends StatelessWidget {
  const StartSipAndMandateFlow({super.key});

  @override
  Widget build(BuildContext context) {
    // final args =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return DUIPage(
      pageUid: 'sipintro2',
      onMessageReceived: (message) {
        switch (message.name) {
          case 'mandateCreated':
            Navigator.pushNamed(
              message.context,
              '/startMandateStatusFlow',
              arguments: {
                'sipMandate': {
                  "dezerv_id": "664f574e0ccfca5dfc022379",
                  "bank": {
                    "name": "Paytm Payments Bank",
                    "account_number": "********9169",
                    "ifsc_code": "PYTM0123456"
                  },
                  "mandate": {
                    "amount": 10000000,
                    "currency": "INR",
                    "frequency": "Monthly",
                    "step_up": false,
                    "step_up_perc": 0,
                    "start_month": "May",
                    "strategies": [
                      {
                        "name": "Alpha Beta Equity Strategy",
                        "strategy_id": "654b2dfbc24a9cf7cf67019a",
                        "clientId": "143522",
                      }
                    ]
                  }
                }
              },
            );
            Fluttertoast.showToast(
                timeInSecForIosWeb: 2,
                msg: message.name + '   \n    ' + message.body.toString());

          case 'sipMandateSuccess':
            Fluttertoast.showToast(
                timeInSecForIosWeb: 2,
                msg: message.name + '   \n    ' + message.body.toString());
        }
      },
      pageArgs: const {
        'sipMandate': {
          "dezerv_id": "664f574e0ccfca5dfc022379",
          "bank": {
            "name": "Paytm Payments Bank",
            "account_number": "********9169",
            "ifsc_code": "PYTM0123456"
          },
          "mandate": {
            "amount": 10000000,
            "currency": "INR",
            "frequency": "Monthly",
            "step_up": false,
            "step_up_perc": 0,
            "start_month": "May",
            "strategies": [
              {
                "name": "Alpha Beta Equity Strategy",
                "strategy_id": "654b2dfbc24a9cf7cf67019a",
                "clientId": "143522",
              }
            ]
          }
        }
      },
    );
  }
}