import 'package:cyber_watch/login.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

//import "package:syncfusion_flutter_datepicker/datepicker.dart";
class signupPage extends StatelessWidget {
  const signupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "SignUp",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account, its FREE",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  InputFile(label: "Email", hintText: ''),
                  SizedBox(
                    height: 15,
                  ),
                  InputFile(label: "Password", obscureText: true, hintText: ''),
                  SizedBox(
                    height: 15,
                  ),
                  InputFile(
                      label: "Confirm Password",
                      obscureText: true,
                      hintText: ''),
                  SizedBox(
                    height: 15,
                  ),
                  InputFile(
                    label: "Enter name of your country",
                    hintText: '',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //input field to enter the date of birth
                  InputFile(
                    label: "Enter your date of birth",
                    obscureText: false,
                    hintText: "DD/MM/YYYY",
                    //date picker to select the date of birth
                    child: DatePicker(
                      dateFormat: DateFormat("dd-MM-yyyy"),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2050),
                      initialDate: DateTime.now(),
                      onDateChanged: (date) {
                        // ignore: avoid_print
                        print(date);
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: <Widget>[
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed:
                            () {}, //add functionality for the signup button here
                        color: Color(0xff0095FF),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        //sized box is used to add space between the input fields
                        height: 20,
                      ),
                      //add login with google button here
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed:
                            () {}, //add functionality for the signup button here
                        color: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        child: Text(
                          "Signup With Google",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => loginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Already have an account? Signin",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  DatePicker(
      {dateFormat,
      required DateTime firstDate,
      required DateTime lastDate,
      required DateTime initialDate,
      required Null Function(date) onDateChanged}) {}

  DateFormat(String s) {}
}

mixin date {}
