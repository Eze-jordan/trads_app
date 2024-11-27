import 'package:flutter/material.dart';

class Screens3 extends StatelessWidget {
  const Screens3({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/img/Le graphique des actions Teal est en hausse.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 480),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Simplify Invoicing \nfor Faster Payments",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend',
                  height: 1,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Simplify billing invoices. Through an automated\npayment system, payment will be faster and\neasier.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
