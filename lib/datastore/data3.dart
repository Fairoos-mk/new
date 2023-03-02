import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../datastore/data1.dart';
class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final formKey = GlobalKey<FormState>(); //key for form

  @override
  TextEditingController textEditingControllercontroller =
  TextEditingController();
  Widget build(BuildContext context) {
    String Handingperson = "";
    String Estimatedate= "";
    String Time = "";
    final _conHandingperson = TextEditingController();
    final _conEstimatedate= TextEditingController();
    final _contime = TextEditingController();
    String Name = "";
    String PhoneNo = "";
    String vehicle = "";
    String place = "";
    String DOS = "";
    final _conName = TextEditingController();
    final _conphoneNo= TextEditingController();
    final _convehicle = TextEditingController();
    final _conplace= TextEditingController();
    final _conDOS = TextEditingController();
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      body:
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white10,
                  Colors.white10,
                ])),

        child: ListView(
            children: [
              Form(
                key: formKey, //key for form
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.07),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "E-Lab",
                        style: TextStyle(fontSize: 30, color: Color(0xff1b5e20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Service centre",
                        style: TextStyle(fontSize: 20, color: Color(0xff1b5e20)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller:_conHandingperson ,
                        decoration: InputDecoration(
                          hintText: 'Handingperson',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _conEstimatedate,
                        decoration: InputDecoration(
                          hintText: 'Estimatedate',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        controller: _contime,
                        decoration: InputDecoration(
                          hintText: 'Time',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.01 ,
              ),
            ]
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
      Map <String,dynamic> data={
        // "item_name":_add_item.text,
        // "Quantity":_add_number.text
         "Name": _conName,
         "PhoneNo":_conphoneNo,
         " vehicle":_convehicle,
         "place":_conplace,
         "DOS":_conDOS,
        };
           FirebaseFirestore.instance.collection("Scooter_spare").add(data);        },
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.black,
        label: const Text('Submit'),


      ),
    );
  }
}
