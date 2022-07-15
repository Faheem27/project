// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:northern_hevean/common/loadingIcon.dart';
import 'package:northern_hevean/models/profileModel.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({Key key}) : super(key: key);

  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  List<ProfileModel> list = [];
  Future<int> getUserProfile() async {
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getUserProfile(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const LoadingIcon();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Error'),
          );
        } else {
          return Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                  child: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildProfileImage(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      buildname(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      buildEmail(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      buildDOB(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      buildPhoneNo(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      buildCity(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      buildSaveButton(),
                    ]),
              )));
        }
      },
    ));
  }

  Widget buildProfileImage() {
    return Center(
      child: Stack(
        children: [
          const CircleAvatar(
            radius: 75,
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: IconButton(
                  onPressed: () {
                    buildButtonOption();
                  },
                  icon: const Icon(Icons.add_a_photo, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                    color: Colors.white,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      50,
                    ),
                  ),
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(2, 4),
                      color: Colors.black.withOpacity(
                        0.3,
                      ),
                      blurRadius: 3,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildname() {
    return TextFormField(
      controller: nameController,
      cursorColor: Colors.green,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'Name',
          labelStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.person_outline, color: Colors.green)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Your Name';
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
            prefixIcon: Icon(Icons.calendar_today, color: Colors.green)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter your Date Of Birth';
          }
          return null;
        });
  }

  Widget buildPhoneNo() {
    return TextFormField(
        controller: phonenoController,
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
            prefixIcon:
                Icon(Icons.phone_android_outlined, color: Colors.green)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter Your Phone';
          }
          return null;
        });
  }

  Widget buildCity() {
    return TextFormField(
      controller: cityController,
      cursorColor: Colors.green,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: 'City',
          labelStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.location_city_outlined, color: Colors.green)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Your City';
        }
        return null;
      },
    );
  }

  Widget buildSaveButton() {
    return FractionallySizedBox(
      widthFactor: 1.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.green),
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Error')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Profile Change')));
          }
        },
        child: const Text('Save'),
      ),
    );
  }

  void buildButtonOption() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera, color: Colors.green),
                title: const Text('Camera'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.photo_library, color: Colors.green),
                title: const Text('Gallary'),
                onTap: () {},
              ),
            ],
          );
        });
  }
}
