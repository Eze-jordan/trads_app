import 'package:flutter/material.dart';

class Screens1 extends StatelessWidget {
  const Screens1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/img/—Pngtree—3d rendering of a glowing_4843680.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 300, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create Invoices\nFaster and Easier",
              style: TextStyle(
                color: Colors.white,
                fontSize: 43,
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
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lexend',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
