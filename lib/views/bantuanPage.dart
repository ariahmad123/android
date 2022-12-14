// ignore_for_file: file_names, avoid_unnecessary_containers, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/theme.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class BantuanPage extends StatefulWidget {
  const BantuanPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BantuanPageState createState() => _BantuanPageState();
}

class _BantuanPageState extends State<BantuanPage> {
  @override
  Widget build(BuildContext context) {
    Widget banner() {
      return Container(
        margin: EdgeInsets.only(
          // left: defaultMargin,
          // top: 25.0,
          // right: defaultMargin,
          bottom: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 10),
              // changes position of shadow
            ),
          ],
        ),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 0.0,
                  bottom: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pusat",
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      "Bantuan",
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/ambulance.png',
                width: 200.0,
                height: 190.0,
              ),
            ],
          ),
        ),
      );
    }

    Widget menu() {
      return Container(
        margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.height * 0.15,
          bottom: defaultMargin,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pusat Bantuan Covid",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 1.0),
              Text(
                "Jika anda mengalami gejala gejala seperti ini, silahkan \n hubungi kontak dibawah ini",
                style: blackTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget gejala() {
      return Container(
        margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.height * 0.02,
          bottom: defaultMargin,
        ),
        child: Center(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                  right: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3383CD),
                      Color(0xFF11249F),
                    ],
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/virus.png"),
                  ),
                ),
                child: ClipRRect(
                  child: Image(
                    image: AssetImage('assets/images/headache.png'),
                    width: 75.0,
                    height: 80.0,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.04),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                  right: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3383CD),
                      Color(0xFF11249F),
                    ],
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/virus.png"),
                  ),
                ),
                child: ClipRRect(
                  child: Image(
                    image: AssetImage('assets/images/fever.png'),
                    width: 75.0,
                    height: 80.0,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.04),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                  bottom: 10.0,
                  right: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3383CD),
                      Color(0xFF11249F),
                    ],
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/virus.png"),
                  ),
                ),
                child: ClipRRect(
                  child: Image(
                    image: AssetImage('assets/images/caugh.png'),
                    width: 75.0,
                    height: 80.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildButton(
            {required VoidCallback onClicked,
            required String text,
            required image,
            required String text1,
            required Color color,
            required Color color1}) =>
        Container(
          padding: EdgeInsets.only(
            bottom: 5.0,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              // shadow
              elevation: 6.0,
            ),
            onPressed: onClicked,
            child: Container(
              padding: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: color1,
                    ),
                    child: Image.asset(
                      image,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    text,
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.only(
                      right: 20.0,
                      left: 20.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: color,
                    ),
                    child: Text(
                      text1,
                      style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
    Widget buildButton1(
            {required VoidCallback onClicked,
            required String text,
            required image,
            required Color color}) =>
        Container(
          padding: EdgeInsets.only(
            bottom: 5.0,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              // shadow
              elevation: 6.0,
            ),
            onPressed: onClicked,
            child: Container(
              padding: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: color,
                    ),
                    child: Image.asset(
                      image,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    text,
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 10.0,
                  ),
                ],
              ),
            ),
          ),
        );

    return Scaffold(
        body: Container(
            child: Column(
      children: [
        banner(),
        menu(),
        gejala(),
        Expanded(
          child: ListView(
            children: [
              buildButton(
                  image: 'assets/images/phone.png',
                  text: 'Ambulance',
                  text1: 'PANGGIL',
                  color: Color.fromARGB(255, 16, 190, 16),
                  color1: Colors.green.withOpacity(0.2),
                  onClicked: () {
                    FlutterPhoneDirectCaller.callNumber('119');
                  }),
              const SizedBox(height: 10.0),
              buildButton1(
                image: 'assets/images/konsultasi.png',
                text: 'Hotline Pusat',
                color: Color.fromARGB(255, 163, 27, 179).withOpacity(0.2),
                onClicked: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Container(
                    padding: EdgeInsets.only(
                        bottom: 20.0, left: 40.0, right: 40.0, top: 20.0),
                    height: MediaQuery.of(context).size.height * 0.60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(25.0),
                        topRight: const Radius.circular(25.0),
                      ),
                    ),
                    child: ListView(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 20.0,
                          ),
                        ),
                        Image(
                          image: AssetImage('assets/images/Virus-pana.png'),
                          width: 100.0,
                          height: 100.0,
                        ),
                        Text(
                          "Apa itu Virus Corona?",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Virus corona adalah keluarga besar virus yang menyebabkan penyakit pada hewan dan manusia. Beberapa virus corona yang dikenal menyebabkan infeksi saluran pernapasan ringan hingga penyakit yang lebih serius seperti Middle East Respiratory Syndrome (MERS) dan Sindrom Pernafasan Akut Berat/Severe Acute Respiratory Syndrome (SARS). Virus corona baru yang ditemukan menyebabkan penyakit COVID-19.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              buildButton1(
                image:
                    'assets/images/red-circle-button-with-white-plus-ferst-aid-health-care-emergency-help-3d-icon_313242-1185-removebg-preview 1).png',
                text: 'Rumah Sakit Terdekat',
                color: Color.fromARGB(255, 179, 27, 45).withOpacity(0.2),
                onClicked: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Container(
                    padding: EdgeInsets.only(
                        bottom: 20.0, left: 40.0, right: 40.0, top: 20.0),
                    height: MediaQuery.of(context).size.height * 0.60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(25.0),
                        topRight: const Radius.circular(25.0),
                      ),
                    ),
                    child: ListView(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 20.0,
                          ),
                        ),
                        Image(
                          image: AssetImage('assets/images/Virus-pana.png'),
                          width: 100.0,
                          height: 100.0,
                        ),
                        Text(
                          "Apa itu Virus Corona?",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Virus corona adalah keluarga besar virus yang menyebabkan penyakit pada hewan dan manusia. Beberapa virus corona yang dikenal menyebabkan infeksi saluran pernapasan ringan hingga penyakit yang lebih serius seperti Middle East Respiratory Syndrome (MERS) dan Sindrom Pernafasan Akut Berat/Severe Acute Respiratory Syndrome (SARS). Virus corona baru yang ditemukan menyebabkan penyakit COVID-19.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    )));
  }
}
