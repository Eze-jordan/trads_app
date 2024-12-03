import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                  Spacer(),
                  Text(
                    "Create",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lexend',
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_control_rounded,
                    color: Colors.black,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Invoice #0028',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Recipient',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend',
                ),
              ),
            ),
            Center(
              child: Container(
                height: 90,
                width: 370,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F9F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/img/eze_image.jpg'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 3),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mario Brozovic",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: 'Onest',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Brozo.M@gmail.com",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontFamily: 'Onest',
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 35, top: 20),
                          child: Icon(Icons.clear_rounded,
                              color: Color(0xFF6ADDB4)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Text('Project',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lexend',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Redesign Mobile App",
                  filled: true,
                  fillColor: const Color(0XFFFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    // Remove border color,
                  ),
                ),
              ),
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Row(
                    children: [
                      Text('Item',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lexend',
                          )),
                      Spacer(),
                      Text('+ Add Item',
                          style: TextStyle(
                            color: Color(0xFF6ADDB4),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lexend',
                          ))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: 220,
                  width: 370,
                  decoration: BoxDecoration(
                    color: const Color(0xffd6f3ea),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text('Description',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lexend',
                            )),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Mobile App Design Services",
                            filled: true,
                            fillColor: const Color(0XFFFFFFFF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              // Remove border color,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 10, left: 30, right: 30),
                            child: Row(
                              children: [
                                Text('Qty',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Lexend',
                                    )),
                                SizedBox(
                                  width: 60,
                                ),
                                Text('Price',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Lexend',
                                    )),
                                SizedBox(
                                  width: 70,
                                ),
                                Text('Total',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Lexend',
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 30, right: 30),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50, // Largeur définie
                                  height: 40, // Hauteur définie
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "1",
                                      filled: true,
                                      fillColor: const Color(0xFFFFFFFF),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Lexend',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 100, // Largeur définie
                                  height: 40, // Hauteur définie
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "€5.200",
                                      filled: true,
                                      fillColor: const Color(0xFFFFFFFF),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Lexend',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 100, // Largeur définie
                                  height: 40, // Hauteur définie
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "€5.200",
                                      filled: true,
                                      fillColor: const Color(0xFFFFFFFF),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Lexend',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 30),
                  child: Row(
                    children: [
                      Text('Issued',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontFamily: 'Lexend',
                          )),
                      SizedBox(
                        width: 150,
                      ),
                      Text('Due',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontFamily: 'Lexend',
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150, // Largeur définie
                          height: 40, // Hauteur définie
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "24 Nov 2021",
                              filled: true,
                              fillColor: const Color(0xFFFFFFFF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Lexend',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          width: 150, // Largeur définie
                          height: 40, // Hauteur définie
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "04 Dec 2021",
                              filled: true,
                              fillColor: const Color(0xFFFFFFFF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Lexend',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text('Total',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontFamily: 'Lexend',
                            )),
                        Text('€5.200',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontFamily: 'Lexend',
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2cd196),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fixedSize: const Size(130, 40),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons
                                .corporate_fare_outlined, // Choisissez une icône
                            color: Colors.white,
                            size: 18, // Ajustez la taille de l'icône
                          ),
                          SizedBox(
                              width: 5), // Espacement entre l'icône et le texte
                          Text(
                            'Preview',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lexend',
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
