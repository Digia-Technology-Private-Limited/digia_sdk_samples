import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    List<String> goToList = [
      'To Native Second page',
      'To First Digia\'s page',
      'To Second Digia\'s page',
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        shadowColor: Colors.purple.shade300,
        backgroundColor: Colors.purple.withOpacity(0.4),
        title: const Text(
          'First Page',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              args != null ? 'Navigated From ${args['navigatedFrom']}' : '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                goToList.length,
                (index) => InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.pushNamed(
                          context,
                          '/nativeSecondPage',
                          arguments: {'navigatedFrom': 'Native First Page'},
                        );
                      case 1:
                        Navigator.pushNamed(
                          context,
                          '/digiaSipAndMandateFlow',
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
                      case 2:
                        Navigator.pushNamed(
                          context,
                          '/digiaSecondPage',
                          arguments: {'navigatedFrom': 'Native First Page'},
                        );
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      goToList[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
