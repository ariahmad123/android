import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/views/home.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int listC = 0;
  var sessions = [];

  var pincode = "";

  @override
  void initState() {
    // TODO: implement initState
    print(pincode);
    getData();
    super.initState();
  }

  getData() async {
    var url = Uri.parse(
        'https://apicovid19indonesia-v2.vercel.app/api/indonesia/provinsi');
    var response = await http.get(url);
    var result = jsonDecode(response.body);
    print(result);
    setState(() {
      sessions = result;
      listC = sessions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Results"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: listC,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        sessions[index]['provinsi'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Total Cases: " +
                            sessions[index]['kasusPosi'].toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Total Recovered: " +
                            sessions[index]['kasusSemb'].toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Total Deaths: " +
                            sessions[index]['kasusMeni'].toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
