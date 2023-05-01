import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grand_bazar/Screens/Home/home.dart';

import '../Registration/registration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController mobileController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //login function
    void signIn(String mobile, String password) {
      if (_formKey.currentState!.validate()) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      }
    }

    //Contact field
    final mobileField = TextFormField(
      autofocus: false,
      controller: mobileController,
      keyboardType: TextInputType.number,
      validator: (value) {
        RegExp regex = RegExp(r'^(?:[+0]9)?[0-9]{10}$');

        if (value!.isEmpty) {
          return ("contact number is required");
        }

        if (!regex.hasMatch(value)) {
          return ("Please Enter valid contact");
        }

        return null;
      },
      onSaved: (value) {
        mobileController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.phone),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Mobile Number",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))),
    );

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        validator: (value) {
          RegExp regex = RegExp(r'^.{6,}$');

          if (value!.isEmpty) {
            return ("Please enter your password");
          }

          if (!regex.hasMatch(value)) {
            return ("Please Enter valid Password(Min. 6 Characters)");
          }

          return null;
        },
        obscureText: true,
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.vpn_key),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "Password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(2))));

    //login button
    final loginButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 255, 188, 4),
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(30, 15, 20, 20),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            signIn(mobileController.text, passwordController.text);
          },
          child: const Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
              child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 150,
                            child: Image.asset(
                              "assets/grandbazaarLogo.png",
                              fit: BoxFit.contain,
                            )),

                        const SizedBox(height: 25),

                        //Label to display top of fields
                        const Text(
                          'Login to your account',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 25),
                        mobileField,
                        const SizedBox(height: 25),
                        passwordField,
                        const SizedBox(height: 25),
                        loginButton,
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account? "),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegistrationScreen()));
                              },
                              child: const Text("Sign Up",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 188, 4),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                            )
                          ],
                        )
                      ])),
            ),
          )),
        ));
  }
}
