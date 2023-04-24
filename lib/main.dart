import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'JsonFromAsset.dart';
import 'modal/Items.dart';

Future<String> _loadAStudentAsset() async {
  return await rootBundle.loadString('assets/items.json');
}

Future<Items> loadStudent() async {
  String jsonString = await _loadAStudentAsset();
  final jsonResponse = json.decode(jsonString);
  return Items.fromJson(jsonResponse);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Items student = await loadStudent();
  //runApp(MyApp(userlist: student));
  runApp(MaterialApp(home:JsonFromAsset()));
  //Items student = await loadStudent();
 // runApp(MyApp(student: student));
}

class MyApp extends StatefulWidget {

  final Items userlist;
  MyApp({super.key, required this.userlist});
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Load Json'),
          ),
          body: Container(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Text(
                      "Hi ${widget.userlist.name} your id is ${widget.userlist.description} and score ${widget.userlist.id} ")
                ],
              ))),
    );
  }
}