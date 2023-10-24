import 'package:flutter/material.dart';
import 'package:zing_bus_clone/utils/constant/dimensions.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
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
