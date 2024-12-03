import 'package:flutter/material.dart';

class Screens2 extends StatelessWidget {
  const Screens2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/—Pngtree—technology 2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 300, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Generate Bills Quickly \nand Conveniently",
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lexend',
                height: 1,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Streamline your invoicing process.\nWith our automated system, transactions\nare completed efficiently and hassle-free.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
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
