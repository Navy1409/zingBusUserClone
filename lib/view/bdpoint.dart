import 'package:flutter/material.dart';

class bdPoint extends StatefulWidget {
  const bdPoint({super.key});

  @override
  State<bdPoint> createState() => _bdPointState();
}

class _bdPointState extends State<bdPoint> {
  bool isPressedb= true;
  bool isPressedd= false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("Delhi to Jaipur", style: TextStyle(color: Colors.white, fontSize: 20),),
                    SizedBox(height: 5,),
                    Text("07 October, Saturday", style: TextStyle(color: Colors.white, fontSize: 15),),
                  ],
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(onPressed: (){
                      setState((){
                        isPressedb= true;
                        isPressedd=false;
                      });
                    },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Boarding Point",
                          style: TextStyle(
                            color: isPressedb?Colors.black:Colors.grey.shade400,
                            fontWeight: isPressedb?FontWeight.bold:FontWeight.normal,
                            fontSize: 20
                          ),),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(onPressed: (){
                      setState((){
                        isPressedd= true;
                        isPressedb=false;
                      });
                    },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Drop Point",
                          style: TextStyle(
                            color: isPressedd?Colors.black:Colors.grey.shade400,
                            fontWeight: isPressedd?FontWeight.bold:FontWeight.normal,
                            fontSize: 20
                          ),),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Visibility(
                    visible: isPressedb,
                    child: Container(
                      // height: double.minPositive,
                      // color: Colors.grey.shade400,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,),
                                            child: Text("Mori Gate", style: TextStyle(fontSize: 18),)),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined, color: Colors.green,),
                                            SizedBox(width: 2,),
                                            Text("33.9 Km", style: TextStyle(fontSize: 18, color: Colors.green),),
                                            SizedBox(width: 2,),
                                            VerticalDivider(color: Colors.black,),
                                            SizedBox(width: 2,),
                                            Text("11:30 pm", style: TextStyle(fontSize: 18),),
                                          ],
                                        ),
                                        SizedBox( height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.navigation_sharp, color: Color(0xff7d2aff),),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text("Navigate", style: TextStyle(color: Color(0xff7d2aff)),)
                                          ],
                                        ),
                                        SizedBox(height: 10,)
                                      ],
                                    ),
                                    Container(alignment: Alignment.topLeft,
                                        child: Icon(Icons.circle_outlined, color: Color(0xff7d2aff),))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,),
                                            child: Text("Mori Gate", style: TextStyle(fontSize: 18),)),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined, color: Colors.green,),
                                            SizedBox(width: 2,),
                                            Text("33.9 Km", style: TextStyle(fontSize: 18, color: Colors.green),),
                                            SizedBox(width: 2,),
                                            VerticalDivider(color: Colors.black,),
                                            SizedBox(width: 2,),
                                            Text("11:30 pm", style: TextStyle(fontSize: 18),),
                                          ],
                                        ),
                                        SizedBox( height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.navigation_sharp, color: Color(0xff7d2aff),),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text("Navigate", style: TextStyle(color: Color(0xff7d2aff)),)
                                          ],
                                        ),
                                        SizedBox(height: 10,)
                                      ],
                                    ),
                                    Container(alignment: Alignment.topLeft,
                                        child: Icon(Icons.circle_outlined, color: Color(0xff7d2aff),))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,),
                                            child: Text("Mori Gate", style: TextStyle(fontSize: 18),)),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined, color: Colors.green,),
                                            SizedBox(width: 2,),
                                            Text("33.9 Km", style: TextStyle(fontSize: 18, color: Colors.green),),
                                            SizedBox(width: 2,),
                                            VerticalDivider(color: Colors.black,),
                                            SizedBox(width: 2,),
                                            Text("11:30 pm", style: TextStyle(fontSize: 18),),
                                          ],
                                        ),
                                        SizedBox( height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.navigation_sharp, color: Color(0xff7d2aff),),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text("Navigate", style: TextStyle(color: Color(0xff7d2aff)),)
                                          ],
                                        ),
                                        SizedBox(height: 10,)
                                      ],
                                    ),
                                    Container(alignment: Alignment.topLeft,
                                        child: Icon(Icons.circle_outlined, color: Color(0xff7d2aff),))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,),
                                            child: Text("Mori Gate", style: TextStyle(fontSize: 18),)),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined, color: Colors.green,),
                                            SizedBox(width: 2,),
                                            Text("33.9 Km", style: TextStyle(fontSize: 18, color: Colors.green),),
                                            SizedBox(width: 2,),
                                            VerticalDivider(color: Colors.black,),
                                            SizedBox(width: 2,),
                                            Text("11:30 pm", style: TextStyle(fontSize: 18),),
                                          ],
                                        ),
                                        SizedBox( height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.navigation_sharp, color: Color(0xff7d2aff),),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text("Navigate", style: TextStyle(color: Color(0xff7d2aff)),)
                                          ],
                                        ),
                                        SizedBox(height: 10,)
                                      ],
                                    ),
                                    Container(alignment: Alignment.topLeft,
                                        child: Icon(Icons.circle_outlined, color: Color(0xff7d2aff),))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                ),
              ),
              Container(
                child: Visibility(
                    visible: isPressedd,
                    child: Container(
                      // color: Colors.grey.shade600,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,),
                                            child: Text("Mori Gate", style: TextStyle(fontSize: 18),)),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text("11:30 pm", style: TextStyle(fontSize: 18),),
                                          ],
                                        ),
                                        SizedBox( height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.navigation_sharp, color: Color(0xff7d2aff),),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text("Navigate", style: TextStyle(color: Color(0xff7d2aff)),)
                                          ],
                                        ),
                                        SizedBox(height: 10,)
                                      ],
                                    ),
                                    Container(alignment: Alignment.topLeft,
                                        child: Icon(Icons.circle_outlined, color: Color(0xff7d2aff),))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,),
                                            child: Text("Mori Gate", style: TextStyle(fontSize: 18),)),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text("11:30 pm", style: TextStyle(fontSize: 18),),
                                          ],
                                        ),
                                        SizedBox( height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.navigation_sharp, color: Color(0xff7d2aff),),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text("Navigate", style: TextStyle(color: Color(0xff7d2aff)),)
                                          ],
                                        ),
                                        SizedBox(height: 10,)
                                      ],
                                    ),
                                    Container(alignment: Alignment.topLeft,
                                        child: Icon(Icons.circle_outlined, color: Color(0xff7d2aff),))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8,),
                                            child: Text("Mori Gate", style: TextStyle(fontSize: 18),)),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Text("11:30 pm", style: TextStyle(fontSize: 18),),
                                          ],
                                        ),
                                        SizedBox( height: 10,),
                                        Row(
                                          children: [
                                            Icon(Icons.navigation_sharp, color: Color(0xff7d2aff),),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text("Navigate", style: TextStyle(color: Color(0xff7d2aff)),)
                                          ],
                                        ),
                                        SizedBox(height: 10,)
                                      ],
                                    ),
                                    Container(alignment: Alignment.topLeft,
                                        child: Icon(Icons.circle_outlined, color: Color(0xff7d2aff),))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
