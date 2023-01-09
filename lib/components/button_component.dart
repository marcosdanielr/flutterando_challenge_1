import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String method;
  const ButtonComponent({super.key, required this.method});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Colors.white),
      child: Row(
        children: [
          Container(
            width: 15,
            height: 15,
            child: Image.asset(icon(method)),
          ),
          SizedBox(width: 60),
          Center(
            child: Text(
              "Log in with $method",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String icon(String value) {
  if (value == 'Google') {
    return 'assets/images/google-icon.png';
  }

  if (value == 'Phone number') {
    return 'assets/images/talk-icon.png';
  }

  return 'assets/images/facebook-icon.png';
}
