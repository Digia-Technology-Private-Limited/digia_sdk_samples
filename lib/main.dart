import 'package:digia_sdk_samples/growthx/growthx_login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/growthxLoginPage': (context) => const GrowthxLoginPage(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/growthxLoginPage');
          },
          child: const Text('Go to Growthx Login Page'),
        ),
      ),
    );
  }
}