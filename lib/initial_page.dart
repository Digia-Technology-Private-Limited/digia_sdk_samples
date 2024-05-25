import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dezerv flow'),
        backgroundColor: Colors.deepPurple,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/startSipAndMandateFlow');
                },
                child: const Text('Start sip mandate flow')),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/startMandateStatusFlow');
                },
                child: const Text('Start mandate status flow'))
          ],
        ),
      ),
    );
  }
}
