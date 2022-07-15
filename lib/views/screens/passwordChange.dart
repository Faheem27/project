// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Change Password'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_outlined)),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 30.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildOldPassword(),
                      const SizedBox(
                        height: 20,
                      ),
                      buildNewPassword(),
                      const SizedBox(
                        height: 20,
                      ),
                      buildConfirmPassword(),
                      const SizedBox(
                        height: 20,
                      ),
                      buildSignButton()
                    ],
                  ),
                )),
          ),
        ));
  }

  Widget buildOldPassword() {
    return TextFormField(
        controller: oldPasswordController,
        obscureText: true,
        cursorColor: Colors.green,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            labelText: 'Old Password',
            labelStyle: TextStyle(color: Colors.grey),
            hintText: 'Enter Your Old Password',
            prefixIcon: Icon(Icons.lock_outline, color: Colors.green)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter Correct Password';
          } else if (value.length < 8) {
            return 'Password must be 8 Characters';
          }
          return null;
        });
  }

  Widget buildNewPassword() {
    return TextFormField(
        controller: newPasswordController,
        obscureText: true,
        cursorColor: Colors.green,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            labelText: 'New Password',
            labelStyle: TextStyle(color: Colors.grey),
            hintText: 'Enter Your New Password',
            prefixIcon: Icon(Icons.lock_outline, color: Colors.green)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter Correct Password';
          } else if (value.length < 8) {
            return 'Password must be 8 Characters';
          }
          return null;
        });
  }

  Widget buildConfirmPassword() {
    return TextFormField(
        controller: confirmPasswordController,
        obscureText: true,
        cursorColor: Colors.green,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            labelText: 'Confirm Password',
            labelStyle: TextStyle(color: Colors.grey),
            hintText: 'Enter Your Confirm Password',
            prefixIcon: Icon(Icons.lock_outline, color: Colors.green)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter Correct Password';
          } else if (value != newPasswordController.text) {
            return 'Please Enter a Correct Password';
          }
          return null;
        });
  }

  Widget buildSignButton() {
    return FractionallySizedBox(
      widthFactor: 1,
      child: ElevatedButton(
        child: const Text('Sign Up'),
        style: ElevatedButton.styleFrom(primary: Colors.green),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Sign Up Succefully')),
            );
            Navigator.pushReplacementNamed(context, '/');
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Form Empty')),
            );
          }
        },
      ),
    );
  }
}
