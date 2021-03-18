import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Text(
                      DateFormat.MMMEd().format(now),
                      style: TextStyle(
                        fontSize: (18),
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
                          'Bhima',
                          style: TextStyle(
                              fontSize: (30),
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100,
              ),
              // Image.asset('assets/'),
              IconButton(
                  onPressed: null,
                  iconSize: 70,
                  icon: Icon(Icons.account_circle))
            ],
          ),
        ],
      ),
    );
  }
}
