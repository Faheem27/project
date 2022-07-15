// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class PassengerPage extends StatefulWidget {
  const PassengerPage({Key key}) : super(key: key);

  @override
  State<PassengerPage> createState() => _PassengerPageState();
}

class _PassengerPageState extends State<PassengerPage> {
  //number picker
  int _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Passenger Selection'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: SafeArea(
        child: Column(
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
                  value: _currentValue,
                  minValue: 0,
                  maxValue: 20,
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
                      final newValue = _currentValue = value;
                      _currentValue = newValue.clamp(0, 100);
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
                  value: _currentValue,
                  minValue: 0,
                  maxValue: 20,
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
                      final newValue = _currentValue = value;
                      _currentValue = newValue.clamp(0, 100);
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
                  value: _currentValue,
                  minValue: 0,
                  maxValue: 20,
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
                      final newValue = _currentValue = value;
                      _currentValue = newValue.clamp(0, 100);
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
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/dashboardScreen');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
