// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/theme.dart';

class InformasiPage extends StatefulWidget {
  const InformasiPage({Key? key}) : super(key: key);

  @override
  _InformasiPageState createState() => _InformasiPageState();
}

class _InformasiPageState extends State<InformasiPage> {
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
          borderRadius: BorderRadius.vertical(
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
              offset: Offset(0, 10),
              // changes position of shadow
            ),
          ],
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 20.0,
                  bottom: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kenali",
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      "COVID-19",
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(height: defaultMargin),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/dokter.png',
                width: 200.0,
              ),
            ],
          ),
        ),
      );
    }

    Widget menu() {
      return Container(
        margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.height * 0.20,
          bottom: defaultMargin,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Apa Itu Virus Corona ?",
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 20.0,
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
            required image}) =>
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
            child: Row(
              children: [
                Image.asset(
                  image,
                  width: 50.0,
                  height: 70.0,
                ),
                SizedBox(width: 10.0),
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
        );
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            banner(),
            menu(),
            Expanded(
              child: ListView(
                children: [
                  buildButton(
                    image: 'assets/images/Virus-pana.png',
                    text: 'Mengenal',
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
                  buildButton(
                    image: 'assets/images/gejala.png',
                    text: 'Gejala',
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
                              image: AssetImage('assets/images/gejala.png'),
                              width: 100.0,
                              height: 150.0,
                            ),
                            Text(
                              "Gejala Virus Corona",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Gejala virus corona yang paling umum adalah demam, batuk kering, dan kelelahan. Beberapa pasien mungkin mengalami sakit, hidung tersumbat, pilek, sakit tenggorokan atau diare. Gejala-gejala ini biasanya ringan dan mulai muncul 2-14 hari setelah Anda terpapar virus. Beberapa orang yang terinfeksi COVID-19 tidak mengalami gejala sama sekali.",
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
                  buildButton(
                    image: 'assets/images/global-handwashing-day.png',
                    text: 'Mencegah',
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
                              image: AssetImage(
                                'assets/images/global-handwashing-day.png',
                              ),
                              width: 100.0,
                              height: 100.0,
                            ),
                            Text(
                              "Mencegah Virus Corona",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Untuk mencegah penyebaran COVID-19: hindari menyentuh mata, hidung, dan mulut dengan tangan yang belum dibersihkan; hindari kontak dekat dengan orang yang sakit; tinggalkan rumah jika Anda merasa tidak enak badan; dan ikuti arahan pemerintah setempat. Jika Anda merasa sakit, batuk, atau kesulitan bernapas, segera cari bantuan medis. Jaga jarak aman dengan orang yang batuk atau bersin. Jaga jarak paling sedikit 1 meter (3 kaki) dari orang yang batuk atau bersin. Jika Anda tidak dapat menjaga jarak 1 meter, gunakan masker. Jangan sentuh mata, hidung, atau mulut Anda. Segera cuci tangan Anda dengan sabun dan air atau cairan pembersih tangan berbahan alkohol.",
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

                  buildButton(
                    image: 'assets/images/isometric.png',
                    text: 'Mengobati',
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
                              image: AssetImage(
                                'assets/images/isometric.png',
                              ),
                              width: 100.0,
                              height: 100.0,
                            ),
                            Text(
                              "Mengobati Virus Corona",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Saat ini, tidak ada obat khusus yang dapat mengobati COVID-19. Orang yang terinfeksi COVID-19 perlu mendapatkan perawatan untuk meredakan gejala. Orang yang mengalami gejala ringan biasanya dapat pulih di rumah. Namun, orang yang mengalami gejala yang lebih serius, seperti kesulitan bernapas, perlu mendapatkan perawatan di rumah sakit.",
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
                  buildButton(
                    image: 'assets/images/world.png',
                    text: 'Mengantisipasi',
                    onClicked: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        padding: EdgeInsets.only(
                            // bottom: MediaQuery.of(context).viewInsets.bottom,
                            bottom: 20.0,
                            left: 40.0,
                            right: 40.0,
                            top: 20.0),
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
                              image: AssetImage(
                                'assets/images/world.png',
                              ),
                              width: 100.0,
                              height: 100.0,
                            ),
                            Text(
                              "Mengantisipasi",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Untuk mencegah penyebaran COVID-19: hindari menyentuh mata, hidung, dan mulut dengan tangan yang belum dibersihkan; hindari kontak dekat dengan orang yang sakit; tinggalkan rumah jika Anda merasa tidak enak badan; dan ikuti arahan pemerintah setempat. Jika Anda merasa sakit, batuk, atau kesulitan bernapas, segera cari bantuan medis. Jaga jarak aman dengan orang yang batuk atau bersin. Jaga jarak paling sedikit 1 meter (3 kaki) dari orang yang batuk atau bersin. Jika Anda tidak dapat menjaga jarak 1 meter, gunakan masker. Jangan sentuh mata, hidung, atau mulut Anda. Segera cuci tangan Anda dengan sabun dan air atau cairan pembersih tangan berbahan alkohol.",
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

                  // bottomNavigationBar()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
