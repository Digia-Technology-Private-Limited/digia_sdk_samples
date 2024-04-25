import 'package:digia_sdk_samples/home_page/webview_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Enter URL'),
            SizedBox(
              width: 500,
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  setState(() {
                    url = value;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewPage(url)));
                },
                child: const Text('Open URL'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}