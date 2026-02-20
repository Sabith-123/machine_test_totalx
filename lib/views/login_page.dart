import 'package:flutter/material.dart';
import 'package:machine_test_totalx/views/otp_verification_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final phonectr = TextEditingController();
  final formKeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void loginhandler() {
      if (formKeys.currentState!.validate()) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return OtpVerificationPage();
            },
          ),
          (route) => false,
        );
      }
    }

    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFFAFAFA),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Form(
              key: formKeys,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image(
                        width: 130,
                        image: AssetImage('assets/images/OBJECTS.png'),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      'Enter Phone Number',
                      style: TextStyle(
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight(600),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
              
                  TextFormField(
                    
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your phone number';
                      }
                      if (value.length < 10) {
                        return 'enter phone number must 10 digit';
                      }
                      if (value.length > 10) {
                        return 'enter phone number 10 digit';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(169, 101, 101, 132),
              
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(169, 101, 101, 132),
              
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
              
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(169, 101, 101, 132),
                          width: 1,
                        ),
              
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hint: Row(
                        children: [
                          Text(
                            'Enter Phone Number',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight(400),
                            ),
                          ),
                          Text(
                            ' *',
                            style: TextStyle(
                              color: Color(0xFFFF0000),
                              fontSize: 12,
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight(400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "By Continuing, I agree to TotalX's",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight(600),
                          ),
                        ),
                        TextSpan(
                          text: " Terms and condition",
                          style: TextStyle(
                            color: Color(0xFF2873F0),
                            fontSize: 12,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight(600),
                          ),
                        ),
                        TextSpan(
                          text: " & ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight(600),
                          ),
                        ),
                        TextSpan(
                          text: "privacy policy",
                          style: TextStyle(
                            color: Color(0xFF2873F0),
                            fontSize: 12,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight(600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {},
                    child: InkWell(
                      onTap: () {
                        loginhandler();
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return OtpVerificationPage();
                        //     },
                        //   ),
                        //   (route) => false,
                        // );
                      },
                      child: Container(
                        height: 44,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0xFF100E09),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Get OTP',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'montserrat',
                                fontWeight: FontWeight(600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
