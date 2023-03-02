import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'home/homepage.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(home:MyApp(),));
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}


class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TextEditingController _add_item=TextEditingController();
  //
  // TextEditingController _add_number=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:homepage()
    // Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     TextField(
      //       controller: _add_item,
      //       decoration: InputDecoration(
      //         hintText: "add item"
      //       ),
      //     ),
      //     SizedBox(height: 10,),
      //     TextField(
      //       controller: _add_number,
      //       decoration: InputDecoration(
      //           hintText: "add number of item"
      //       ),
      //     ),
      //
      //     ElevatedButton(child: Text("Add to Storege"),
      //     onPressed: (){
      //       Map <String,dynamic> data={"item_name":_add_item.text,"Quantity":_add_number.text};
      //
      //       FirebaseFirestore.instance.collection("Scooter_spare").add(data);
      //
      //     },),
      //
      //   ],
      // ),
    );
  }
}
