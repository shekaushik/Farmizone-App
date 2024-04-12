import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import '../../../routes/app_pages.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/signup_bg.png"), // Change the path to your image asset
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FadeInUp(
                      duration: Duration(milliseconds: 1000),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    FadeInUp(duration: Duration(milliseconds: 1250), child: makeInput(label: "Username")),
                    FadeInUp(duration: Duration(milliseconds: 1350), child: makeInput(label: "Email Address")),
                    FadeInUp(duration: Duration(milliseconds: 1450), child: makeInput(label: "Password", obscureText: true)),
                    FadeInUp(duration: Duration(milliseconds: 1550), child: makeInput(label: "Confirm Password", obscureText: true)),
                  ],
                ),
                FadeInUp(duration: Duration(milliseconds: 1600), child: Container(
                  padding: EdgeInsets.only(top: 4, left: 3),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: MaterialButton(
                    minWidth: 60,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 7),
                    onPressed: () => Get.offNamed(Routes.BASE),
                    color: Colors.green[600],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                )),
                FadeInUp(duration: Duration(milliseconds: 1600), child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      onPressed: () => Get.offNamed(Routes.LOGIN),
                      child: const Text('Log In',
                          style: TextStyle(
                          color: Colors.grey
                      ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
            ),
          ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}
