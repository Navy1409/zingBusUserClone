import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:zing_bus_clone/view/home.dart';
import 'package:zing_bus_clone/view/home_navigation.dart';

class Search extends StatefulWidget {
  // Search({this.app});
  // final FirebaseApp app;

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchData = "";
  //Search({super.key});
  final auth = FirebaseAuth.instance;
  final searchFilter = TextEditingController();
  DatabaseReference  ref = FirebaseDatabase.instance.ref().child("project-backend").child("vehicle").child("places");    //Todo: change the type to Query
  String to="";

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              centerTitle: true,
              title: const Text(
                "Search From City",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
            ),
            body: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xff7d2aff))),
                    child: TextField(
                      onChanged: (String text) {
                        setState(() {
                          searchData=text.toString();
                        });

                        temp();     //Todo: Full List Read...
                      },
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: const TextStyle(color: Colors.grey),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.shade500,
                          )),
                    ),
                  ),

                  Expanded(
                      child: FirebaseAnimatedList(query: ref, itemBuilder: (context, snapshot, animation, index){

                        if (snapshot.key.toString().toLowerCase().contains(searchData.toLowerCase())) {
                          return ListTile(
                            title: Text(snapshot.key.toString() ), //Todo: update with key

                            // onTap: (){
                            //   query=
                            // }
                          );
                        }
                        return const SizedBox(
                          height: 0,
                          width: 0,
                        );

                      }
                      )
                  )
                ],
              ),
            ),
          )),
    );
  }

  Future<void> temp() async {
    // Todo: Code for get data from firebase realtime database as map ...
    ref.onValue.listen((DatabaseEvent  data) {
      print(data.snapshot.value.runtimeType);
      print(data.snapshot.value);
    });
  }

}
