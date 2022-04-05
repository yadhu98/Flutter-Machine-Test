import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../../main.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: 35.0, right: 35.0, top: 60.0, bottom: 20.0),
        child: Column(
          children: [
            Center(
              child: Column(
                children: const [
                  Text(
                    'Let’s Get Started',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4CAF50),
                    ),
                  ),
                  Text(
                    'Create an Account To Continue',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Name',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xFF4CAF50),
                            ),
                            hintText: 'Enter Your Name',
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color(0xFF4CAF50),
                            ),
                            hintText: 'Enter Your Email Address',
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password',
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xFF4CAF50),
                            ),
                            hintText: 'Enter Your Password',
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Confirm Password',
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xFF4CAF50),
                            ),
                            hintText: 'Re-Enter Your Password',
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('OR'),
            SizedBox(height: 20),
            Column(
              children: [
                SignInButton(
                  Buttons.Google,
                  text: "Continue with Google",
                  padding:
                      EdgeInsets.only(top: 25, bottom: 25, left: 90, right: 90),
                  onPressed: () {},
                ),
                SizedBox(height: 20),
                SignInButton(
                  Buttons.Facebook,
                  text: "Continue with Facebook",
                  padding:
                      EdgeInsets.only(top: 25, bottom: 25, left: 90, right: 90),
                  onPressed: () {},
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 385,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RootScreen.routeName);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    child: Text('Sign Up'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
