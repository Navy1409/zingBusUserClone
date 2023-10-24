import 'package:flutter/material.dart';
import 'package:zing_bus_clone/utils/constant/dimensions.dart';

class acc extends StatefulWidget {
  const acc({super.key});

  @override
  State<acc> createState() => _accState();
}

class _accState extends State<acc> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return SafeArea(child: Scaffold(
      body: Text('ollllllllllll'),
    ));
  }
}
