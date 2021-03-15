import 'dart:html';

import 'package:farmer/constants/constant_string.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      DateFormat.MMMEd().format(now),
                      style: TextStyle(
                        fontSize: (20),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Hi, ',
                          style: TextStyle(
                            fontSize: (30),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Arun',
                          style: TextStyle(
                              fontSize: (30),
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Image.asset('assets/'),
                IconButton(
                    onPressed: null,
                    iconSize: 100,
                    
                    icon: Icon(Icons.account_circle))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
