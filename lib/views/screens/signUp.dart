// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
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
                buildName(),
                const SizedBox(
                  height: 20.0,
                ),
                buildEmail(),
                const SizedBox(
                  height: 20.0,
                ),
                buildPassword(),
                const SizedBox(
                  height: 20.0,
                ),
                buildConfirmPassword(),
                const SizedBox(
                  height: 20.0,
                ),
                buildDOB(),
                const SizedBox(
                  height: 20.0,
                ),
                buildPhoneNo(),
                const SizedBox(
                  height: 20.0,
                ),
                buildGender(),
                const SizedBox(
                  height: 20.0,
                ),
                buildCity(),
                const SizedBox(
                  height: 20.0,
                ),
                buildNationality(),
                const SizedBox(
                  height: 20.0,
                ),
                buildButton(),
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

  Widget buildName() {
    return TextFormField(
      controller: nameController,
      keyboardType: TextInputType.name,
      cursorColor: Colors.green,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Full Name',
          labelStyle: TextStyle(color: Colors.grey),
          hintText: 'Enter Your Full Name',
          prefixIcon: Icon(Icons.person_outline, color: Colors.green)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Full Name';
        }
        return null;
      },
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
      cursorColor: Colors.green,
      keyboardType: TextInputType.text,
      obscureText: true,
      textInputAction: TextInputAction.next,
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

  Widget buildConfirmPassword() {
    return TextFormField(
      controller: confirmPasswordController,
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
          labelText: 'Confirm Password',
          labelStyle: TextStyle(color: Colors.grey),
          hintText: 'Confirm Your Password',
          prefixIcon: Icon(Icons.lock_outline, color: Colors.green)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Your Password';
        } else if (value != passwordController.text) {
          return "Passwords don't match";
        }
        return null;
      },
    );
  }

  Widget buildDOB() {
    return TextFormField(
        controller: dobController,
        cursorColor: Colors.green,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            labelText: 'Date of birth',
            labelStyle: TextStyle(color: Colors.grey),
            hintText: 'Enter Your Date Of Birth',
            prefixIcon: Icon(Icons.date_range, color: Colors.green)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter your Date Of Birth';
          }
          return null;
        });
  }

  Widget buildPhoneNo() {
    return TextFormField(
        controller: phoneNoController,
        cursorColor: Colors.green,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            labelText: 'Phone Number',
            labelStyle: TextStyle(color: Colors.grey),
            hintText: 'Enter your phone number',
            prefixIcon: Icon(Icons.phone_outlined, color: Colors.green)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter Your Phone';
          }
          return null;
        });
  }

  Widget buildGender() {
    return TextFormField(
      controller: genderController,
      cursorColor: Colors.green,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Gender',
          labelStyle: TextStyle(color: Colors.grey),
          hintText: 'Male/Female',
          prefixIcon: Icon(Icons.person_outline, color: Colors.green)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Fill The Gender';
        }
        return null;
      },
    );
  }

  Widget buildCity() {
    return TextFormField(
      controller: cityController,
      cursorColor: Colors.green,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'City',
          labelStyle: TextStyle(color: Colors.grey),
          hintText: 'City Name',
          prefixIcon: Icon(Icons.location_city_outlined, color: Colors.green)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Fill The City Name';
        }
        return null;
      },
    );
  }

  Widget buildNationality() {
    return TextFormField(
      controller: nationalityController,
      keyboardType: TextInputType.name,
      cursorColor: Colors.green,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Nationality',
          labelStyle: TextStyle(color: Colors.grey),
          hintText: 'Nationality',
          prefixIcon: Icon(Icons.flag_outlined, color: Colors.green)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Fill The Nationality';
        }
        return null;
      },
    );
  }

  Widget buildButton() {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.green),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Register Succefully')),
            );
            Navigator.pop(context);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Email Already Exits')),
            );
          }
        },
        child: const Text('Register'),
      ),
    );
  }
}
