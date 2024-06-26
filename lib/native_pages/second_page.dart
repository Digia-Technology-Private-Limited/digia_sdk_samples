import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    List<String> goToList = [
      'To Native First page',
      'To First Digia\'s page',
      'To Second Digia\'s page',
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        shadowColor: Colors.purple.shade300,
        backgroundColor: Colors.purple.withOpacity(0.4),
        title: const Text(
          'Second Page',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
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
                        '/nativeFirstPage',
                        arguments: {'navigatedFrom': 'Native Second Page'},
                      );
                    case 1:
                      Navigator.pushNamed(
                        context,
                        '/digiaFirstPage',
                        arguments: {'navigatedFrom': 'Native Second Page'},
                      );
                    case 2:
                      Navigator.pushNamed(
                        context,
                        '/digiaSecondPage',
                        arguments: {'navigatedFrom': 'Native Second Page'},
                      );
                  }
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
          const Spacer(),
        ],
      ),
    );
  }
}
