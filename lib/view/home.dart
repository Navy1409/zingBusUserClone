import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:zing_bus_clone/utils/constant/dimensions.dart';
import 'package:zing_bus_clone/view/Search.dart';
import 'package:zing_bus_clone/view/Ticketbook.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  String to="To";
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    int currentIndex=0;
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40* heightF,
              child: Image.asset(
                  "images/logohome.png"
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white
                  ),
                  onPressed: () { },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.purple.shade200,

                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.currency_bitcoin,
                          color: Colors.yellow,
                        ),
                        Text("0"),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff7d2aff),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff7d2aff),
                  ),
                  tooltip: 'Comment Icon',
                  onPressed: () {},
                ),
              ],
            )
          ],
        ) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 10, left: 25, right: 25, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Search()));
                          },

                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.grey.shade500)
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.directions_bus_outlined),
                                SizedBox(
                                  width: 20*widthP,
                                ),
                                Text(
                                  "From",
                                  style: TextStyle(color: Colors.grey.shade600),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Search()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.grey.shade500)
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.directions_bus_outlined),
                                SizedBox(
                                  width: 20*widthP,
                                ),
                                Text(
                                  "To",
                                  style: TextStyle(color: Colors.grey.shade600),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.date_range_rounded,
                                    color: Colors.grey.shade600,
                                  ),
                                  SizedBox(
                                    width: 14*widthP,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Journey Date",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3* heightF,
                                      ),
                                      Text(
                                        "Mon, 25 Sep",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15*widthP),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 34* heightF,
                                    width: 60*widthP,
                                    decoration: BoxDecoration(
                                        color: Color(0xff7d2aff),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      // border: Border.all(
                                      //   color: Colors.grey.shade500,
                                      // ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Today",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20*widthP,
                                  ),
                                  Container(
                                    height: 34* heightF,
                                    width: 80*widthP,
                                    decoration: BoxDecoration(
                                        color: Color(0xff7d2aff),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      // border: Border.all(
                                      //   color: Colors.grey.shade500,
                                      // ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Tomorrow",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10* heightF,),
                      Container(
                        height: 34* heightF,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff7d2aff),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          // border: Border.all(
                          //   color: Colors.grey.shade500,
                          // ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        bookTicket()));
                          },
                          child: Text(
                            "SEARCH BUSES",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 300,
                  child: Container(
                    height: 48* heightF,
                    width: 48.0*widthP,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey.shade500)
                    ),
                    child: FittedBox(
                      child: FloatingActionButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
                        backgroundColor: Colors.white,
                        elevation: 0,
                        onPressed: () {},
                        child: Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.arrow_right_arrow_left,
                              weight: 100,
                              size: 27,
                              color: Color(0xff7d2aff),
                            ),
                            style: IconButton.styleFrom(
                              side: BorderSide(
                                color: Colors.grey.shade600,
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10* heightF,),
            CarouselSlider(
              items: [
                //1st Image of Slider
                for(int i=1; i<5; i++)
                  Container(
                    height: 250* heightF,
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/homecc$i.webp"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),

              ],

              //Slider Container properties
              options:
              CarouselOptions(
                onPageChanged: (index,reason){
                  setState(() {
                    currentIndex=index;
                  });
                },
                height: 200.0* heightF,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 2,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 200),
                viewportFraction: 0.9,
              ),
            ),
            SizedBox(height: 15* heightF,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 1; i < 5; i++)
                  Row(
                    children: [
                      Container(
                        height: 12 * heightF,
                        width: 15 * widthP,
                        decoration: BoxDecoration(
                            color: currentIndex == (i-1 )
                                ? Color(0xff7d2aff)
                                : Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
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
            SizedBox(height: 15* heightF,),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.yellow.shade500, Colors.white]),
              ),
              child: Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                width: double.infinity,
                height: 350* heightF,
                child: Column(
                  children: [
                    SizedBox(height: 14* heightF,),
                    Text("Zingbus Gaurantee", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20*widthP),),
                    SizedBox(height: 11* heightF,),
                    CarouselSlider(
                      items: [
                        //1st Image of Slider
                        for(int i=1; i<3; i++)
                          InkWell(
                            child: Container(
                              height: 250* heightF,
                              margin: EdgeInsets.only(right: 20.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("images/homec2$i.webp"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),

                      ],

                      //Slider Container properties
                      options:
                      CarouselOptions(
                        onPageChanged: (index,reason){
                          setState(() {
                            currentIndex=index;
                          });
                        },
                        height: 300.0* heightF,
                        enlargeCenterPage: false,
                        autoPlay: true,
                        aspectRatio: 16 / 2,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 200),
                        viewportFraction: 0.9,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
