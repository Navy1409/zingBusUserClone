import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zing_bus_clone/view/home_navigation.dart';
import 'package:zing_bus_clone/view/loginPage.dart';
import 'package:zing_bus_clone/view/splash.dart';
import 'package:zing_bus_clone/utils/constant/dimensions.dart';

import 'firebase_options.dart';


Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash=true;
  LoadHome(){
    Future.delayed(const Duration(seconds: 5),(){
      setState(() {
        showingSplash=false;
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    LoadHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return MaterialApp(
        routes: {
          "/home" : (context) => const Home(),
        },
        debugShowCheckedModeBanner: false,
        home:showingSplash ? const SplashScreen() : const loginPage());
  }
}