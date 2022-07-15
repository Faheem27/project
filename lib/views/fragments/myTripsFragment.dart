// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyTripsFragment extends StatefulWidget {
  const MyTripsFragment({Key key}) : super(key: key);

  @override
  _MyTripsFragmentState createState() => _MyTripsFragmentState();
}

class _MyTripsFragmentState extends State<MyTripsFragment> {
  TextEditingController bookingController = TextEditingController();
  TextEditingController lastName1Controller = TextEditingController();
  TextEditingController lastName2Controller = TextEditingController();
  TextEditingController eTicketController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom: const TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 3.0, color: Colors.white),
              insets: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            ),
            tabs: [
              Tab(
                child: Text('Upcoming Trips'),
              ),
              Tab(
                child: Text('Previous Trips'),
              )
            ],
          ),
          backgroundColor: Colors.green,
          title: const Text('My Trips'),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 150,
                    ),
                    Icon(
                      Icons.flight,
                      size: 150.0,
                      color: Colors.grey,
                    ),
                    Text(
                      'No trips found',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    )
                  ],
                ),
              ),
              //this is for previos trip page....
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.flight,
                    size: 150.0,
                    color: Colors.grey,
                  ),
                  Text(
                    'No trips found',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
