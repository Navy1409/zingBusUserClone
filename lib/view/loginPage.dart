import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zing_bus_clone/Controllers/auth.dart';
import 'package:zing_bus_clone/utils/constant/dimensions.dart';
import 'package:zing_bus_clone/view/home_navigation.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final _formkey1 = GlobalKey<FormState>();
  int currentIndex = 0;
  int start = 30;
  bool wait = false;
  bool resend = false;
  bool edit = false;
  bool otpSend = false; // Todo: Code customize and otp add in same page...

  @override
  void startTimer() {
    const onesec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onesec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
          resend = true;
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  Widget build(BuildContext context) {
    // Todo: Add this code to every page ⤵️⤵️⤵️⤵️⤵️
    double widthP = Dimensions.myWidthThis(context);
    double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    // Todo: Add this code to every page ⤴️⤴️⤴️⤴️⤴️

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            // Todo: Add this code to every page with Container ⤵️⤵️⤵️⤵️⤵️
            width: 411.42 * widthP, //Todo: widthP for all width
            // height: 876.57 * heightF, //Todo: heightP only for this line
            // Todo: Add this code to every page ⤴️⤴️⤴️⤴️⤴️

            child: Column(
              children: [
                SizedBox(
                  height: 20 * heightF,
                ), //Todo: heightF for all height
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/loginlogo.png",
                      height: 50 * heightF,
                      width: 250 * widthP,
                    )
                  ],
                ),
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    for (int i = 1; i < 5; i++)
                      Container(
                        width: 411.42 * widthP, //Todo: widthP for all width
                        height: 876.57 * heightP,
                        margin: EdgeInsets.only(right: 20.0 * widthP),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("images/loginscroll$i.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    height: 500.0 * heightF,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 2,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 200),
                    viewportFraction: 0.9,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 1; i < 5; i++)
                      Row(
                        children: [
                          Container(
                            height: 8 * heightF,
                            width: 10 * widthP,
                            decoration: BoxDecoration(
                                color: currentIndex == (i - 1)
                                    ? const Color(0xff7d2aff)
                                    : Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: .5,
                                      blurRadius: 1,
                                      offset: Offset(2, 2))
                                ]),
                          ),
                          SizedBox(
                            width: 5 * widthP,
                          )
                        ],
                      ),
                  ],
                ),
                SizedBox(
                  height: 10 * heightF,
                ),

                otpSend == false
                    ? Container(
                        height: 264 * heightF,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15 * heightF),
                            topLeft: Radius.circular(15 * heightF),
                          ),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5 * heightF,
                            ),
                            Text(
                              "Welcome to Zingbus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18 * widthP),
                            ), //Todo: widthP for all fontSize
                            SizedBox(
                              height: 10 * heightF,
                            ),
                            Text(
                              "We will send OTP to this mobile number",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13 * heightF,
                                  color: Colors.grey.shade500),
                            ),
                            SizedBox(
                              height: 15* heightF,
                            ),
                            Form(
                              key: _formkey,
                              child: TextFormField(
                                controller: phoneController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    prefixText: "+91",
                                    labelText: "Enter your mobile no.",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                                validator: (value) {
                                  if (value!.length != 10) {
                                    return "Invalid phone no.";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10 * heightF,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                    // Assuming `Auth.sendOtp` is an asynchronous function, you should wait for its completion using `await`.
                                    Auth.sendOtp(
                                      phone: phoneController.text,
                                      errorStep: () {
                                        // Show a snackbar if there's an error during OTP sending.
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text("OTP not sent"),
                                          ),
                                        );
                                      },
                                      nextStep: () {
                                        setState(() {
                                          otpSend = true;
                                          startTimer();
                                        });
                                      },
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff7d2aff),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text("PROCEED"),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        height: 270 * heightF,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15 * heightF),
                            topLeft: Radius.circular(15 * heightF),
                          ),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5 * heightF,
                            ),
                            Text(
                              "Welcome to Zingbus",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18 * widthP),
                            ), //Todo: widthP for all fontSize
                            SizedBox(
                              height: 5 * heightF,
                            ),
                            Container(
                              height: 31*heightF,
                              child: Row(
                                children: [
                                  Text(
                                    "We will send OTP to this mobile number",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13 * heightF,
                                        color: Colors.grey.shade500),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          otpSend = false;
                                        });
                                      },
                                      child: Text(
                                        "Edit number.",
                                        style: TextStyle(
                                            color: Color(0xff7d2aff),
                                            decoration: TextDecoration.underline,
                                            decorationColor: Color(0xff7d2aff)),
                                      ))
                                ],
                              ),
                            ),

                            Form(
                              key: _formkey1,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: otpController,
                                decoration: InputDecoration(
                                  labelText: "Enter OTP.",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                                validator: (value) {
                                  if (value!.length != 6) {
                                    return "Invalid OTP";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Container(
                              height: 32*heightF,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Didn't recieve OTP?  ",
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 14)),
                                  resend
                                      ? SizedBox(
                                        child: TextButton(
                                            onPressed: () {
                                              resend=false;
                                              start=60;
                                              if (_formkey.currentState!
                                                  .validate()) {
                                                // Assuming `Auth.sendOtp` is an asynchronous function, you should wait for its completion using `await`.
                                                Auth.sendOtp(
                                                  phone: phoneController.text,
                                                  errorStep: () {
                                                    // Show a snackbar if there's an error during OTP sending.
                                                    ScaffoldMessenger.of(context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                        content:
                                                            Text("OTP not sent"),
                                                      ),
                                                    );
                                                  },
                                                  nextStep: () {
                                                    setState(() {
                                                      otpSend = true;
                                                      startTimer();
                                                    });
                                                  },
                                                );
                                              }
                                              resend = false;
                                            },
                                            child: Text("Resend",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xff7d2aff))),
                                          ),
                                      )
                                      : Text("resend in 00:$start ",
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 14)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 35,
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () {
                                    if (_formkey1.currentState!.validate()) {
                                      Auth.loginWithOtp(otp: otpController.text)
                                          .then((value) {
                                        if (value == "Success") {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          const Home()));
                                        }
                                      });
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text("OTP entered wrong"),
                                        ),
                                      );
                                    }
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xff7d2aff),
                                    foregroundColor: Colors.white,
                                  ),
                                  child: const Text("LOGIN"),
                                )),
                          ],
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
