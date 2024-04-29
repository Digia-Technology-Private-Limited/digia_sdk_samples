import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class GrowthxOTPpage extends StatefulWidget {
  const GrowthxOTPpage({super.key});

  @override
  State<GrowthxOTPpage> createState() => _GrowthxOTPpageState();
}

class _GrowthxOTPpageState extends State<GrowthxOTPpage> {
  final defaultPinTheme = PinTheme(
    width: 60,
    height: 60,
    margin: const EdgeInsets.only(right: 15),
    textStyle: const TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(255, 255, 255, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Growth',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontFamily: 'Gilroy',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'X',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 78, 195),
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Text(
                'MEMBERSHIP',
                style: TextStyle(
                  color: Color.fromARGB(180, 255, 255, 255),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  letterSpacing: 3.0,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Access the club.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Times New Roman',
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Enter OTP',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Edit number',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 12,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text("Haven't received OTP? Click to resend",
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 82, 214),
                    fontSize: 14,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  )),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20, bottom: 20,),
                child: Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 5, 82, 214),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/growthxHomePage');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: const Center(
                  child: Text(
                    'Login with password',
                    style: TextStyle(
                      color: Color.fromARGB(228, 255, 255, 255),
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 8),
                child: const Divider(
                  color: Colors.white,
                  thickness: 0.2,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      'Apply for a GrowthX Membership',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Center(
                  child: Text(
                    'Term of use',
                    style: TextStyle(
                      color: Color.fromARGB(149, 255, 255, 255),
                      fontSize: 12,
                      fontFamily: 'Gilroy',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
