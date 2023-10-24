
import 'package:flutter/material.dart';
import 'package:zing_bus_clone/utils/constant/dimensions.dart';
import 'package:zing_bus_clone/view/loginPage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {

    // Timer(
    //     Duration(seconds: 3),
    //         () =>
    //         Navigator.of(context).pushReplacement(MaterialPageRoute(
    //             builder: (BuildContext context) => loginPage()
    //         )),
    // );

    // Todo: Add this code to every page ⤵️⤵️⤵️⤵️⤵️
    double widthP = Dimensions.myWidthThis(context);
    double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    // Todo: Add this code to every page ⤴️⤴️⤴️⤴️⤴️



    return SafeArea(

      child: Scaffold(
        backgroundColor: Color(0xff7d2aff),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/logo.png", height: heightF*80, width:  widthP*80,),
                Image.asset("images/logo 2.png", height: heightF*80, width: widthP*180,)
              ],
            ),
          )),
    );
  }
}
