import 'package:digia_sdk_samples/native_pages/first_page.dart';
import 'package:digia_sdk_samples/native_pages/second_page.dart';
import 'package:digia_ui/digia_ui.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    const HomePage(),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/nativeFirstPage': (context) => const FirstPage(),
        '/nativeSecondPage': (context) => const SecondPage(),
        '/digiaFirstPage': (context) => DUIPage(pageUid: ''),
        '/digiaSecondPage': (context) => DUIPage(pageUid: ''),
      },
      home: FutureBuilder(
        future: DigiaUIClient.initializeFromNetwork(
          accessKey: '654a07bd58a81f8c6e5c38c5',
          environment: Environment.staging,
          version: 1,
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Scaffold(
              body: SafeArea(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Initializing from Cloud...'),
                      LinearProgressIndicator()
                    ],
                  ),
                ),
              ),
            );
          }

          if (snapshot.hasError) {
            return const Scaffold(
              body: SafeArea(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Could not fetch Config.',
                        style: TextStyle(color: Colors.red, fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }

          // final initialRouteData =
          //     DigiaUIClient.getConfigResolver().getfirstPageData();

          return const FirstPage();
        },
      ),
    );
  }
}
