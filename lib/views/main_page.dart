// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/bantuanPage.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/informasiPage.dart';
import 'package:flutter_application_1/views/NavBar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List Pages = [
    HomeView(),
    BantuanPage(),
    InformasiPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 58, 137, 210),
                Color.fromARGB(255, 21, 42, 182),
              ],
            ),
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),

        title: Center(
          child: Row(
            children: [
              // const Icon(
              //   Icons.account_circle_outlined,
              //   color: Colors.white,
              //   size: 40,
              // ),
              // const SizedBox(width: 1.0),
              // Text(
              //   'Hi, Guys',
              //   style: blackTextStyle.copyWith(
              //     fontWeight: bold,
              //     fontSize: 16.0,
              //     color: Colors.white,
              //   ),
              // ),
              const Spacer(),
              const Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ],
          ),
        ),
        elevation: 0,
        // automaticallyImplyLeading: false,
      ),
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.red,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Color.fromARGB(255, 21, 42, 182),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage('assets/images/menu1.png'),
              // color: Color.fromARGB(255, 47, 155, 165),
              size: 40,
            ),
            label: 'Kasus',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage('assets/images/menu2.png'),
              // color: Color.fromARGB(255, 47, 155, 165),
              size: 40,
            ),
            label: 'Bantuan',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage('assets/images/menu3.png'),
              // color: Color.fromARGB(255, 47, 155, 165),
              size: 40,
            ),
            label: 'Informasi',
          ),
        ],
      ),
    );
  }
}
