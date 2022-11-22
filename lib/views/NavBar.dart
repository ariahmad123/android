// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('ariahmaddhani'),
            accountEmail: Text(user!.email!),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/dokter.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 47, 155, 165),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/dokter.png'),
              ),
            ),
          ),
          ListTile(
            title: const Text('Biodata'),
            leading: const Icon(Icons.person),
            onTap: () => null,
          ),
          ListTile(
            title: const Text('Pengaturan'),
            leading: const Icon(Icons.settings),
            onTap: () => null,
          ),
          ListTile(
            title: const Text('Tentang'),
            leading: const Icon(Icons.info),
            onTap: () => null,
          ),
          ListTile(
            title: const Text('Keluar'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
    );
  }
}
