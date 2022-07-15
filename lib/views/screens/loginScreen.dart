// ignore_for_file: file_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 30.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildProfileImage(),
                const SizedBox(
                  height: 30.0,
                ),
                buildEmail(),
                const SizedBox(
                  height: 20.0,
                ),
                buildPassword(),
                const SizedBox(
                  height: 20.0,
                ),
                buildButton(),
                const SizedBox(
                  height: 20.0,
                ),
                Row(children: const [
                  Expanded(child: Divider()),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(child: Divider()),
                ]),
                const SizedBox(
                  height: 20.0,
                ),
                buildSignUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileImage() {
    return const Center(
      child: Image(
        image: AssetImage('assets/logo.png'),
      ),
    );
  }

  Widget buildEmail() {
    return TextFormField(
      controller: emailController,
      cursorColor: Colors.green,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Email',
          labelStyle: TextStyle(color: Colors.grey),
          hintText: 'Enter Your Email',
          prefixIcon: Icon(Icons.email_outlined, color: Colors.green)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Your Email Address';
        } else if (isValidEmail(value) == false) {
          return 'Invalid Email';
        }
        return null;
      },
    );
  }

  bool isValidEmail(String email) {
    RegExp regExp = RegExp(
        "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*");
    return (regExp.hasMatch(email)) ? true : false;
  }

  Widget buildPassword() {
    return TextFormField(
      controller: passwordController,
      keyboardType: TextInputType.text,
      obscureText: true,
      cursorColor: Colors.green,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        prefixIcon: Icon(Icons.lock_outline, color: Colors.green),
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.grey),
        hintText: 'Enter Your Password',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Your Password';
        } else if (value.length < 8) {
          return 'Password must be 8 characters';
        }
        return null;
      },
    );
  }

  Widget buildButton() {
    return FractionallySizedBox(
      widthFactor: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.green),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Login Succefully')),
            );
            Navigator.pushReplacementNamed(context, '/');
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Form Empty')),
            );
          }
        },
        child: const Text('Login'),
      ),
    );
  }

  Widget buildSignUp() {
    return RichText(
      text: TextSpan(children: [
        const TextSpan(
          text: 'Need an Account? ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        TextSpan(
            text: 'SIGN UP',
            style: const TextStyle(
              color: Colors.green,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, '/signUpPage');
              }),
      ]),
    );
  }
}
