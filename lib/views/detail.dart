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
<<<<<<< HEAD
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
=======
          margin: EdgeInsets.only(
            top: 20.0,
          ),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: listC,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    top: 5.0,
                    right: defaultMargin,
                    bottom: defaultMargin,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                      bottom: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: defaultMargin,
                            right: defaultMargin,
                            top: 20.0,
                            bottom: 20.0,
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                Text(sessions[index]['key'],
                                    style: blackTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 0, 0, 0))),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            color: Colors.red.withOpacity(0.2),
                                          ),
                                          child: ClipRRect(
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/images/vector.png'),
                                              width: 30.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          // width: 100.0,
                                        ),
                                        Text(
                                          sessions[index]['jumlah_kasus']
                                              .toString(),
                                          style: blackTextStyle.copyWith(
                                            fontWeight: bold,
                                            fontSize: 20.0,
                                            color:
                                                Color.fromARGB(255, 255, 81, 0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          // width: 100.0,
                                        ),
                                        Text(
                                          "Positif",
                                          style: blackTextStyle.copyWith(
                                            fontWeight: bold,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromARGB(255, 255, 81, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            color:
                                                Colors.green.withOpacity(0.2),
                                          ),
                                          child: ClipRRect(
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/images/vector2.png'),
                                              width: 30.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          width: 160.0,
                                        ),
                                        Text(
                                          sessions[index]['jumlah_sembuh']
                                              .toString(),
                                          style: blackTextStyle.copyWith(
                                            fontWeight: bold,
                                            fontSize: 20.0,
                                            color:
                                                Color.fromARGB(255, 0, 192, 13),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          // width: 100.0,
                                        ),
                                        Text(
                                          "Sembuh",
                                          style: blackTextStyle.copyWith(
                                            fontWeight: bold,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromARGB(255, 0, 192, 13),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            color:
                                                Color.fromARGB(255, 255, 17, 0)
                                                    .withOpacity(0.2),
                                          ),
                                          child: ClipRRect(
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/images/vector3.png'),
                                              width: 30.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          // width: 100.0,
                                        ),
                                        Text(
                                          sessions[index]['jumlah_meninggal']
                                              .toString(),
                                          style: blackTextStyle.copyWith(
                                            fontWeight: bold,
                                            fontSize: 20.0,
                                            color:
                                                Color.fromARGB(255, 255, 0, 0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          // width: 100.0,
                                        ),
                                        Text(
                                          "Meninggal",
                                          style: blackTextStyle.copyWith(
                                            fontWeight: bold,
                                            fontSize: 15.0,
                                            color:
                                                Color.fromARGB(255, 255, 0, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    // key jenis kelamin

                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                                color: Color.fromARGB(
                                                        255, 118, 100, 99)
                                                    .withOpacity(0.2),
                                              ),
                                              child: ClipRRect(
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/male.png'),
                                                  width: 30.0,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                              // width: 100.0,
                                            ),
                                            Text(
                                              sessions[index]['jenis_kelamin']
                                                      [0]['doc_count']
                                                  .toString(),
                                              style: blackTextStyle.copyWith(
                                                fontWeight: bold,
                                                fontSize: 20.0,
                                                color: Color.fromARGB(
                                                    255, 118, 100, 99),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                              // width: 100.0,
                                            ),
                                            Text(
                                                sessions[index]['jenis_kelamin']
                                                        [0]['key']
                                                    .toString(),
                                                style: blackTextStyle.copyWith(
                                                    fontWeight: bold,
                                                    fontSize: 10.0,
                                                    color: Color.fromRGBO(
                                                        118, 100, 99, 1))),
                                          ],
                                        ),
                                        SizedBox(width: 50),
                                        Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                                color: Color.fromRGBO(
                                                        118, 100, 99, 1)
                                                    .withOpacity(0.2),
                                              ),
                                              child: ClipRRect(
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/female.png'),
                                                  width: 30.0,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                              // width: 100.0,
                                            ),
                                            Text(
                                              sessions[index]['jenis_kelamin']
                                                      [0]['doc_count']
                                                  .toString(),
                                              style: blackTextStyle.copyWith(
                                                fontWeight: bold,
                                                fontSize: 20.0,
                                                color: Color.fromRGBO(
                                                    118, 100, 99, 1),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                              // width: 100.0,
                                            ),
                                            Text(
                                              sessions[index]['jenis_kelamin']
                                                      [1]['key']
                                                  .toString(),
                                              style: blackTextStyle.copyWith(
                                                fontWeight: bold,
                                                fontSize: 10.0,
                                                color: Color.fromRGBO(
                                                    118, 100, 99, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })),
>>>>>>> 9cd0c68d46ca86010110c3f8ad40558b06c1b4f8
    );
  }
}
