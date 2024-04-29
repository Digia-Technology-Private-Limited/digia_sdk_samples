import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class GrowthxLoginPage extends StatefulWidget {
  const GrowthxLoginPage({super.key});

  @override
  State<GrowthxLoginPage> createState() => _GrowthxLoginPageState();
}

class _GrowthxLoginPageState extends State<GrowthxLoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SingleChildScrollView(
          child: Container(
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
                const Text(
                  'Enter mobile number',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontFamily: 'Gilroy',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InternationalPhoneNumberInput(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Gilroy',
                    ),
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.DIALOG,
                    ),
                    selectorTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Gilroy',
                    ),
                    initialValue: PhoneNumber(isoCode: 'IN'),
                    spaceBetweenSelectorAndTextField: 0,
                    onInputChanged: (PhoneNumber number) {
                      // print(number.phoneNumber);
                    },
                  ),
                ),
                const SizedBox(height: 30),
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
                      Navigator.pushNamed(context, '/growthxOTPpage');
                    },
                    child: const Text(
                      'Get OTP',
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
      ),
    );
  }
}