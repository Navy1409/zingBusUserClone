import 'package:flutter/material.dart';
import 'package:zing_bus_clone/utils/constant/dimensions.dart';
class booking extends StatefulWidget {
  const booking({super.key});

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
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
