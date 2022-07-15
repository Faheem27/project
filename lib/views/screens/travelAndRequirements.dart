// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TravelAndRequirementsScreen extends StatefulWidget {
  const TravelAndRequirementsScreen({Key key}) : super(key: key);

  @override
  State<TravelAndRequirementsScreen> createState() =>
      _TravelAndRequirementsScreen();
}

class _TravelAndRequirementsScreen extends State<TravelAndRequirementsScreen> {
  static const Color blueGreyColor = Color(0xFF363435);
  static const Color redColor = Color(0xFFB13336);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel & Requirements'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Card(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: redColor, width: 2),
            borderRadius: BorderRadius.circular(3.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Customer Information',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: blueGreyColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Full Name:'),
                          SizedBox(height: 10.0),
                          Text('Email Address:'),
                          SizedBox(height: 10.0),
                          Text('Contact Number:')
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Faheem Ullah Inayat',
                            style: TextStyle(color: redColor),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'fahim@gmail.com',
                            style: TextStyle(color: redColor),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '03043354642',
                            style: TextStyle(color: redColor),
                          ),
                        ],
                      )),
                    ],
                  ),
                  const Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Travel Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: blueGreyColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Check-In Date:'),
                          SizedBox(height: 10.0),
                          Text('Check-Out Date:'),
                          SizedBox(height: 10.0),
                          Text('Adult(s):'),
                          SizedBox(height: 10.0),
                          Text('Child:'),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '03/07/2022',
                            style: TextStyle(color: redColor),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '07/07/2022',
                            style: TextStyle(color: redColor),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '02',
                            style: TextStyle(color: redColor),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '01',
                            style: TextStyle(color: redColor),
                          ),
                        ],
                      )),
                    ],
                  ),
                  const Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Travel Information',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: blueGreyColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Company:'),
                          SizedBox(height: 10.0),
                          Text('Contact us:'),
                          SizedBox(height: 10.0),
                          Text('Email us:'),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Mascot Tourism',
                            style: TextStyle(color: redColor),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '+923087722258',
                            style: TextStyle(color: redColor),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'mascottourism@gmail.com',
                            style: TextStyle(color: redColor),
                          ),
                        ],
                      )),
                    ],
                  ),
                  const Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Text('Note:'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, and can be one way or round trip.',
                          style: TextStyle(color: redColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
