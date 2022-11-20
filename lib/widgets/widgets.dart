// ignore_for_file: unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart ';

Widget appBar(BuildContext context) {
  return RichText(
    text: const TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(
            text: 'Peduli',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
            )),
        TextSpan(
            text: 'Covid',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.blue,
              fontSize: 20,
            )),
      ],
    ),
  );
}
