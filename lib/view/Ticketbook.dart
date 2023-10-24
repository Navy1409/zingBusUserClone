import 'package:flutter/material.dart';
import 'package:zing_bus_clone/utils/constant/index.dart';
import 'package:zing_bus_clone/view/bdpoint.dart';



class bookTicket extends StatefulWidget {
  const bookTicket({super.key});

  @override
  State<bookTicket> createState() => _bookTicketState();
}

class _bookTicketState extends State<bookTicket> {

  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return MaterialApp(
      home: SafeArea(child:
      Scaffold(
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
        body:SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade500,
            child: Column(
              children: [
                Container(
                  height: 50*heightF,
                  width: double.infinity,
                  color: Colors.white,
                  child: Image.asset("images/logohome.png"),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("11:35 PM"),
                                Container(
                                  margin: EdgeInsets.all(6),
                                  height: 25,
                                  child: VerticalDivider(color: Colors.grey,
                                  ),
                                ),
                                Text("4h 55min", style: TextStyle(color: Colors.grey.shade500, fontSize: 8),),
                                Container(
                                  margin: EdgeInsets.all(6),
                                  height: 25,
                                  child: VerticalDivider(color: Colors.grey,
                                  ),
                                ),
                                Text("04:30 AM"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("TATA Seater/Sleeper 42 Seats", style: TextStyle(color: Colors.grey.shade800, fontSize: 13),),
                                  SizedBox(height: 40,),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade200,
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child:Text("27 seats (6 Singles)", style: TextStyle(color: Colors.green, fontSize: 10),),
                                  ),
                                  SizedBox(height: 40,)
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Rs. 270", style: TextStyle(fontSize: 18),),
                              Text("X Rs. 307", style: TextStyle(fontSize: 13, color: Colors.grey.shade600)),
                              SizedBox(height: 5,),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent.shade200,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(color: Colors.green)
                                ),
                                child:Text("SAVINGS Applied", style: TextStyle(color: Colors.green, fontSize: 10),),
                              ),
                              SizedBox(height: 5,),
                              TextButton(onPressed: (){
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            bdPoint()));
                              }, child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Select Seat", style: TextStyle(color: Colors.white),)),
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xff7d2aff)
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade500,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: (){}, child: Text("Amenities", style: TextStyle(color: Color(0xff7d2aff)),)),
                            TextButton(onPressed: (){}, child: Text("Timeline", style: TextStyle(color: Color(0xff7d2aff)))),
                            TextButton(onPressed: (){}, child: Text("Cancellation Policies", style: TextStyle(color: Color(0xff7d2aff)))),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("11:35 PM"),
                                Container(
                                  margin: EdgeInsets.all(6),
                                  height: 25,
                                  child: VerticalDivider(color: Colors.grey,
                                  ),
                                ),
                                Text("4h 55min", style: TextStyle(color: Colors.grey.shade500, fontSize: 8),),
                                Container(
                                  margin: EdgeInsets.all(6),
                                  height: 25,
                                  child: VerticalDivider(color: Colors.grey,
                                  ),
                                ),
                                Text("04:30 AM"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("TATA Seater/Sleeper 42 Seats", style: TextStyle(color: Colors.grey.shade800, fontSize: 13),),
                                  SizedBox(height: 40,),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade200,
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child:Text("27 seats (6 Singles)", style: TextStyle(color: Colors.green, fontSize: 10),),
                                  ),
                                  SizedBox(height: 40,)
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Rs. 270", style: TextStyle(fontSize: 18),),
                              Text("X Rs. 307", style: TextStyle(fontSize: 13, color: Colors.grey.shade600)),
                              SizedBox(height: 5,),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent.shade200,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    border: Border.all(color: Colors.green)
                                ),
                                child:Text("SAVINGS Applied", style: TextStyle(color: Colors.green, fontSize: 10),),
                              ),
                              SizedBox(height: 5,),
                              TextButton(onPressed: (){
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            bdPoint()));
                              }, child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Select Seat", style: TextStyle(color: Colors.white),)),
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xff7d2aff)
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade500,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: (){}, child: Text("Amenities", style: TextStyle(color: Color(0xff7d2aff)),)),
                            TextButton(onPressed: (){}, child: Text("Timeline", style: TextStyle(color: Color(0xff7d2aff)))),
                            TextButton(onPressed: (){}, child: Text("Cancellation Policies", style: TextStyle(color: Color(0xff7d2aff)))),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("11:35 PM"),
                                Container(
                                  margin: EdgeInsets.all(6),
                                  height: 25,
                                  child: VerticalDivider(color: Colors.grey,
                                  ),
                                ),
                                Text("4h 55min", style: TextStyle(color: Colors.grey.shade500, fontSize: 8),),
                                Container(
                                  margin: EdgeInsets.all(6),
                                  height: 25,
                                  child: VerticalDivider(color: Colors.grey,
                                  ),
                                ),
                                Text("04:30 AM"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("TATA Seater/Sleeper 42 Seats", style: TextStyle(color: Colors.grey.shade800, fontSize: 13),),
                                  SizedBox(height: 40,),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade200,
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child:Text("27 seats (6 Singles)", style: TextStyle(color: Colors.green, fontSize: 10),),
                                  ),
                                  SizedBox(height: 40,)
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Rs. 270", style: TextStyle(fontSize: 18),),
                              Text("X Rs. 307", style: TextStyle(fontSize: 13, color: Colors.grey.shade600)),
                              SizedBox(height: 5,),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent.shade200,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    border: Border.all(color: Colors.green)
                                ),
                                child:Text("SAVINGS Applied", style: TextStyle(color: Colors.green, fontSize: 10),),
                              ),
                              SizedBox(height: 5,),
                              TextButton(onPressed: (){
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            bdPoint()));
                              }, child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Select Seat", style: TextStyle(color: Colors.white),)),
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xff7d2aff)
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade500,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: (){}, child: Text("Amenities", style: TextStyle(color: Color(0xff7d2aff)),)),
                            TextButton(onPressed: (){}, child: Text("Timeline", style: TextStyle(color: Color(0xff7d2aff)))),
                            TextButton(onPressed: (){}, child: Text("Cancellation Policies", style: TextStyle(color: Color(0xff7d2aff)))),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("11:35 PM"),
                                Container(
                                  margin: EdgeInsets.all(6),
                                  height: 25,
                                  child: VerticalDivider(color: Colors.grey,
                                  ),
                                ),
                                Text("4h 55min", style: TextStyle(color: Colors.grey.shade500, fontSize: 8),),
                                Container(
                                  margin: EdgeInsets.all(6),
                                  height: 25,
                                  child: VerticalDivider(color: Colors.grey,
                                  ),
                                ),
                                Text("04:30 AM"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("TATA Seater/Sleeper 42 Seats", style: TextStyle(color: Colors.grey.shade800, fontSize: 13),),
                                  SizedBox(height: 40,),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade200,
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child:Text("27 seats (6 Singles)", style: TextStyle(color: Colors.green, fontSize: 10),),
                                  ),
                                  SizedBox(height: 40,)
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Rs. 270", style: TextStyle(fontSize: 18),),
                              Text("X Rs. 307", style: TextStyle(fontSize: 13, color: Colors.grey.shade600)),
                              SizedBox(height: 5,),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent.shade200,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    border: Border.all(color: Colors.green)
                                ),
                                child:Text("SAVINGS Applied", style: TextStyle(color: Colors.green, fontSize: 10),),
                              ),
                              SizedBox(height: 5,),
                              TextButton(onPressed: (){
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            bdPoint()));
                              }, child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Select Seat", style: TextStyle(color: Colors.white),)),
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xff7d2aff)
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade500,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: (){}, child: Text("Amenities", style: TextStyle(color: Color(0xff7d2aff)),)),
                            TextButton(onPressed: (){}, child: Text("Timeline", style: TextStyle(color: Color(0xff7d2aff)))),
                            TextButton(onPressed: (){}, child: Text("Cancellation Policies", style: TextStyle(color: Color(0xff7d2aff)))),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),)
    );
  }
}
