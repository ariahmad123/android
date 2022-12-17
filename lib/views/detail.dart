import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../views/theme.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List categoryItemlist = [];

  Future getAllCategory() async {
    var baseUrl = "https://data.covid19.go.id/public/api/prov.json";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        categoryItemlist = jsonData["list_data"];
      });
    }
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState

    super.initState();
    getAllCategory();
  }

  var dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 47, 155, 165),
        title: const Text("Results"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  hint: Text('hooseNumber'),
                  items: categoryItemlist.map((item) {
                    return DropdownMenuItem(
                      value: item['key'].toString(),
                      child: Text(item['key'].toString()),
                    );
                  }).toList(),
                  onChanged: (newVal) {
                    setState(() {
                      dropdownvalue = newVal;
                    });
                  },
                  value: dropdownvalue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
