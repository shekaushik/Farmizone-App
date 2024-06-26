import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 20,
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signup_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FadeInUp(
                          duration: Duration(milliseconds: 1000),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          FadeInUp(
                            duration: Duration(milliseconds: 1200),
                            child: makeInput(label: "Email"),
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1300),
                            child: makeInput(label: "Password", obscureText: true),
                          ),
                        ],
                      ),
                    ),
                    FadeInUp(
                      duration: Duration(milliseconds: 1400),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            // border: Border.all(color: Colors.green[800], width: 2),
                          ),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () => Get.offNamed(Routes.BASE),
                            color: Colors.green[400],
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FadeInUp(
                      duration: Duration(milliseconds: 1500),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account?"),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            onPressed: () => Get.offNamed(Routes.SIGNUP),
                            child: const Text('Sign Up',
                              style: TextStyle(
                                color: Colors.grey
                              ),
                            ),
                          ),
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
        SizedBox(height: 5),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
