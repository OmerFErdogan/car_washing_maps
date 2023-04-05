import 'package:car_washing/login/login_data.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const String routeName = '/register/register_page';
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerNameController = TextEditingController();
  TextEditingController registerSurnameController = TextEditingController();
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              _buildRegisterEmailTextFormField(),
              _buildRegisterPasswordTextFormField(),
              _buildRegisterNameTextFormField(),
              _buildRegisterSurnameTextFormField(),
              _buildRegisterElevatedButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterElevatedButton() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.05),
              backgroundColor: Colors.black),
          onPressed: () {
            if (registerEmailController.text.isEmpty ||
                registerPasswordController.text.isEmpty ||
                registerNameController.text.isEmpty ||
                registerSurnameController.text.isEmpty) {
              Fluttertoast.showToast(
                  msg: "Boş Alan Bırakmayınız",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.black, 
                  textColor: Colors.white, fontSize: 16);
            } else {
              if (emailName.contains(registerEmailController.text)) {
                print("Bu mailden kayıt olunmuş zaten");
              } else {
                emailName.add(registerEmailController.text);
                passwords.add(registerPasswordController.text);
                names.add(registerNameController.text);
                surnames.add(registerSurnameController.text);
                Get.offAndToNamed(LoginPage.routeName);
              }
            }
          },
          child: Text("Kayıt Ol")),
    );
  }

  Widget _buildRegisterEmailTextFormField() {
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
              controller: registerEmailController,
              decoration: const InputDecoration(
                  hintText: "Mail Adresinizi Giriniz",
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

  Widget _buildRegisterPasswordTextFormField() {
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
              controller: registerPasswordController,
              decoration: const InputDecoration(
                  hintText: "Şifrenizi Giriniz",
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

  Widget _buildRegisterNameTextFormField() {
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
              controller: registerNameController,
              decoration: const InputDecoration(
                  hintText: "İsminizi giriniz",
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.abc,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterSurnameTextFormField() {
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
              controller: registerSurnameController,
              decoration: const InputDecoration(
                  hintText: "Soy isminizi Giriniz",
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.nature,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
