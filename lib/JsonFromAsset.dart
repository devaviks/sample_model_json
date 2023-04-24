import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_model_json/modal/Items.dart';

class JsonFromAsset extends StatefulWidget {
  @override
  _JsonFromAssetState createState() => _JsonFromAssetState();
}

class _JsonFromAssetState extends State<JsonFromAsset> {
 // Items userlist = Items();
  //String jsonResponse = "";

  Future<Items> fetchData() async {
    // String data =
    // await DefaultAssetBundle.of(context).loadString("assets/items.json");
    // print("dsfsdfdsfdsfs");

    Future<String> _loadAStudentAsset() async {
      return await rootBundle.loadString('assets/items.json');
    }

    String jsonString = await _loadAStudentAsset();
   /* final jsonResponse = json.decode(jsonString);
    userlist = Items.fromJson(jsonResponse);
    print(userlist.description);*/


    var decode  = jsonDecode(jsonString);
    Map<String, dynamic> userMap = decode;
    Items userlist = Items.fromJson(userMap);
    print(userlist.toString());



    return userlist;
  }

  @override
  Widget build(BuildContext context) {
    fetchData();
    return Scaffold(
        body: Container
          (
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Text(
                    "Hi ")
              ],
            ))

    );
  }
}