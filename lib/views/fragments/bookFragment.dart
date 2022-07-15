// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class BookFragment extends StatefulWidget {
  const BookFragment({Key key}) : super(key: key);

  @override
  _BookFragmentState createState() => _BookFragmentState();
}

class _BookFragmentState extends State<BookFragment> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController destinationFromController = TextEditingController();
  TextEditingController destinationFrom2Controller = TextEditingController();
  TextEditingController destinationToController = TextEditingController();
  TextEditingController destinationTo2Controller = TextEditingController();
//number picker
  int _currentHorizontalIntValue = 0;

  //return Check box Value----------------
  bool _value = true;
  bool _valu = false;
  //one way check box value---------------
  bool _value1 = true;
  bool _value2 = false;

  //Date picker for return
  String dates = "";
  DateTime datePickerReturn = DateTime.now();
  //Date picker
  String date = "";
  DateTime datePicker = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: const TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3.0, color: Colors.white),
                insets: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              ),
              tabs: [
                Tab(
                  child: Text('Return'),
                ),
                Tab(
                  child: Text('One-Way'),
                ),
              ],
            ),
            title: const Text('Booking'),
            centerTitle: true),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TabBarView(
              children: [
                //this for Return page...
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 5),
                                color: Colors.white,
                              )
                            ]),
                        child: Column(
                          children: [
                            const Padding(
                                padding:
                                    EdgeInsets.only(left: 10.0, right: 20.0)),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'From:',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            buildDestinationFrom(),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'To:',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            buildDestinationTo(),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.all(10.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  color: Colors.white,
                                )
                              ]),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      const SizedBox(height: 10.0),
                                      const Text('Departure'),
                                      const SizedBox(height: 10.0),
                                      TextButton(
                                          onPressed: () {
                                            _selectDate(context);
                                          },
                                          child: const Text(
                                            "Choose Date",
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
                                          )),
                                      Text(
                                          "${datePicker.day}/${datePicker.month}/${datePicker.year}")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 10.0),
                                      const Text('Return'),
                                      TextButton(
                                        onPressed: () {
                                          _selectDateReturn(context);
                                        },
                                        child: const Text(
                                          "Choose Date",
                                          style: TextStyle(
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      Text(
                                          "${datePickerReturn.day}/${datePickerReturn.month}/${datePickerReturn.year}")
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/passengerPage');
                                      },
                                      child: Text(
                                        'Passengers:  $_currentHorizontalIntValue',
                                        style: const TextStyle(
                                          color: Colors.green,
                                        ),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        buildClass();
                                      },
                                      child: const Text(
                                        'Choose Class',
                                        style: TextStyle(
                                          color: Colors.green,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                //this for One-Way page.............................................
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 5),
                                color: Colors.white,
                              )
                            ]),
                        child: Column(
                          children: [
                            const Padding(
                                padding:
                                    EdgeInsets.only(left: 10.0, right: 20.0)),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'From:',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            buildDestinationFrom2(),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'To:',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            buildDestinationTo2(),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 5),
                                color: Colors.white,
                              )
                            ]),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(height: 10.0),
                                    const Text('Departure'),
                                    TextButton(
                                      onPressed: () {
                                        _selectDate(context);
                                      },
                                      child: const Text(
                                        "Choose Date",
                                        style: TextStyle(
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    Text(
                                        "${datePicker.day}/${datePicker.month}/${datePicker.year}")
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      buildPassenger();
                                    },
                                    child: Text(
                                      'Passengers:  $_currentHorizontalIntValue',
                                      style: const TextStyle(
                                        color: Colors.green,
                                      ),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      buildClass2();
                                    },
                                    child: const Text(
                                      'Choose Class',
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDestinationFrom() {
    return TextFormField(
      cursorColor: Colors.green,
      controller: destinationFromController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Select Destination',
          labelStyle: TextStyle(color: Colors.grey)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter destination';
        }
        return null;
      },
    );
  }

  Widget buildDestinationTo() {
    return TextFormField(
      cursorColor: Colors.green,
      controller: destinationToController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Select Destination',
          labelStyle: TextStyle(color: Colors.grey)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter destination';
        }
        return null;
      },
    );
  }

  Widget buildDestinationFrom2() {
    return TextFormField(
      cursorColor: Colors.green,
      controller: destinationFrom2Controller,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Select Destination',
          labelStyle: TextStyle(color: Colors.grey)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter destination';
        }
        return null;
      },
    );
  }

  Widget buildDestinationTo2() {
    return TextFormField(
      controller: destinationTo2Controller,
      cursorColor: Colors.green,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Select Destination',
          labelStyle: TextStyle(color: Colors.grey)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter destination';
        }
        return null;
      },
    );
  }

  void buildClass() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            CheckboxListTile(
              title: const Text('Economy'),
              secondary: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 50,
                  minHeight: 50,
                  maxWidth: 70,
                  maxHeight: 70,
                ),
                child: Image.asset('assets/economy.jpg', fit: BoxFit.cover),
              ),
              autofocus: false,
              activeColor: Colors.green,
              checkColor: Colors.white,
              selected: _valu,
              value: _valu,
              onChanged: (bool value) {
                setState(() {
                  _valu = value;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Business'),
              secondary: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 50,
                  minHeight: 50,
                  maxWidth: 70,
                  maxHeight: 70,
                ),
                child: Image.asset('assets/business.jpg', fit: BoxFit.cover),
              ),
              autofocus: false,
              activeColor: Colors.green,
              checkColor: Colors.white,
              selected: _value,
              value: _value,
              onChanged: (bool value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ],
        );
      },
    );
  }

  void buildClass2() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            CheckboxListTile(
              title: const Text('Economy'),
              secondary: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 50,
                  minHeight: 50,
                  maxWidth: 70,
                  maxHeight: 70,
                ),
                child: Image.asset('assets/economy.jpg', fit: BoxFit.cover),
              ),
              autofocus: false,
              activeColor: Colors.green,
              checkColor: Colors.white,
              selected: _value1,
              value: _value1,
              onChanged: (bool value) {
                setState(() {
                  _value1 = value;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Business'),
              secondary: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 50,
                  minHeight: 50,
                  maxWidth: 70,
                  maxHeight: 70,
                ),
                child: Image.asset('assets/business.jpg', fit: BoxFit.cover),
              ),
              autofocus: false,
              activeColor: Colors.green,
              checkColor: Colors.white,
              selected: _value2,
              value: _value2,
              onChanged: (bool value) {
                setState(() {
                  _value2 = value;
                });
              },
            ),
          ],
        );
      },
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: datePicker,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
      confirmText: 'Yes',
      cancelText: 'No',
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark().copyWith(
              colorScheme: const ColorScheme.dark(
                primary: Colors.green,
                onPrimary: Colors.white,
                surface: Colors.green,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.white),
          child: child,
        );
      },
    );
    if (selected != null && selected != datePicker) {
      setState(() {
        datePicker = selected;
      });
    }
  }

  void _selectDateReturn(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: datePickerReturn,
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
      confirmText: 'Yes',
      cancelText: 'No',
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark().copyWith(
              colorScheme: const ColorScheme.dark(
                primary: Colors.green,
                onPrimary: Colors.white,
                surface: Colors.green,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.white),
          child: child,
        );
      },
    );
    if (selected != null && selected != datePickerReturn) {
      setState(() {
        datePickerReturn = selected;
      });
    }
  }

  void buildPassenger() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Passengers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const Text(
                'Select the number of passengers',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Adult',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '12+ years',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  NumberPicker(
                    value: _currentHorizontalIntValue,
                    minValue: 0,
                    maxValue: 100,
                    step: 1,
                    itemHeight: 35,
                    axis: Axis.horizontal,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.green),
                    ),
                    selectedTextStyle: const TextStyle(color: Colors.green),
                    onChanged: (value) {
                      setState(() {
                        _currentHorizontalIntValue = value;
                      });
                    },
                  ),
                ],
              ),
              const Divider(color: Colors.grey),
              Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Child',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '2-11 years',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  NumberPicker(
                    value: _currentHorizontalIntValue,
                    minValue: 0,
                    maxValue: 100,
                    step: 1,
                    itemHeight: 50,
                    axis: Axis.horizontal,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.green),
                    ),
                    selectedTextStyle: const TextStyle(color: Colors.green),
                    onChanged: (value) {
                      setState(() {
                        _currentHorizontalIntValue = value;
                      });
                    },
                  ),
                ],
              ),
              const Divider(color: Colors.grey),
              Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Infant',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '1-2 years',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  NumberPicker(
                    value: _currentHorizontalIntValue,
                    minValue: 0,
                    maxValue: 100,
                    step: 1,
                    itemHeight: 50,
                    axis: Axis.horizontal,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.green),
                    ),
                    selectedTextStyle: const TextStyle(color: Colors.green),
                    onChanged: (value) {
                      setState(() {
                        _currentHorizontalIntValue = value;
                      });
                    },
                  ),
                ],
              ),
              const Divider(color: Colors.grey),
              FractionallySizedBox(
                  widthFactor: 0.5,
                  child: ElevatedButton(
                    child: const Text('Confirm'),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: () {},
                  ))
            ],
          );
        });
      },
    );
  }
}
