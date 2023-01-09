import 'package:flutter/material.dart';
import 'package:flutter_challenge_1/components/button_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 34,
                          height: 34,
                          child: Image.asset('assets/images/logo.png')),
                      SizedBox(width: 4),
                      Text('tinder',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 26)),
                    ],
                  ),
                  SizedBox(height: 250),
                  Text(
                      'By clicking Log In, you agree with our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(height: 5),
                  ButtonComponent(method: 'Google'),
                  ButtonComponent(method: 'Phone number'),
                  ButtonComponent(method: 'Facebook'),
                  SizedBox(height: 50),
                  Container(
                      height: 20,
                      child: Text('Trouble logging in?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700)))
                ],
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red, Colors.pink]))),
      _body()
    ]));
  }
}
