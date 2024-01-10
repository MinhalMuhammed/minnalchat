import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool otpinput = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey,
        body: Stack(children: [
          Container(
            width: double.infinity,
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/chat.png',
                  height: screenHeight * 0.140,
                  width: screenWidth * 0.3,
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.040,
                      ),
                      Text(
                        'Welcome !',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: screenHeight * 0.040,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text(
                          'Enter Your Number',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.020,
                      ),
                      SizedBox(
                        width: screenWidth * 0.7,
                        height: screenHeight * 0.060,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            prefixIcon: Icon(Icons.smartphone),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.teal),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      if (otpinput) 
                      
                      SizedBox(
                          width: screenWidth * 0.6,
                          height: screenHeight * 0.060,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.teal),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ))),
                              onPressed: () {
                                setState(() {
                                  otpinput = true;
                                });
                              },
                              child: Text(
                                'Get Otp',
                                style: TextStyle(color: Colors.white),
                              )))
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
