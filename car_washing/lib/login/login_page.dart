import 'package:car_washing/home/search.dart';
import 'package:car_washing/login/login_data.dart';
import 'package:car_washing/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routeName = '/login/login_page';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildImageAndSizedBox(),
              _buildLoginEmailTextFormField(),
              _buildLoginPasswordTextFormField(),
              _buildForgotPasswordTextButton(),
              _buildLoginElevatedButton(),
              _buildLoginPageRegisterButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginPageRegisterButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            Get.offAndToNamed(RegisterPage.routeName);
          },
          child: Text(
            "ÜYE OL!",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.045,
                color: Colors.black87),
          ),
        ),
      ),
    );
  }

  ElevatedButton _buildLoginElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width * 0.7,
              MediaQuery.of(context).size.height * 0.05),
          backgroundColor: Colors.black),
      onPressed: () {
        loginPress();
      },
      child: Text("Giriş"),
    );
  }

  Padding _buildForgotPasswordTextButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
          alignment: Alignment.centerRight,
          child:
              TextButton(onPressed: (() {}), child: Text("Şifremi Unuttum"))),
    );
  }

  Widget _buildImageAndSizedBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: 300,
          child: Image.network(
              //color: Colors.black,
              "https://png.pngitem.com/pimgs/s/52-521815_transparent-car-wash-png-car-wash-fundraiser-flyer.png"),
        ),
      ),
    );
  }

  Widget _buildLoginEmailTextFormField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: loginEmailController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginPasswordTextFormField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: loginPasswordController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.key,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
    );
  }

  void loginPress() {
    if (loginEmailController.text.isEmpty) {
      print("boş değer basılıyo");
        Fluttertoast.showToast(
                  msg: "Boş Alan Bırakmayınız",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.black, 
                  textColor: Colors.white, fontSize: 16);
    } else {
      if (emailName.contains(loginEmailController.text)) {
        print("beyza yazdırdım");
        if (passwords.contains(loginPasswordController.text)) {
          Get.offAndToNamed(Search.routeName);
        }
      } else {
        print("hiçbir şey yazdıramadım");
      }
    }
  }
}
