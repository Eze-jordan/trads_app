import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:trad_app/ecrans/add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedMonth;
  double? selectedValue;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFECF0F1),
      body: SingleChildScrollView(
        // Make content scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 30, right: 30),
              child: Row(
                children: [
                  Image.asset(
                    "assets/img/LOGO3.png",
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Trads.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lexend',
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.notification_add_outlined,
                    size: 40,
                  ),
                ],
              ),
            ),

            // Overview Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lexend',
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_control_sharp,
                    size: 40,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),

            // Card Section with Chart
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          height: 240,
                          width: 260,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFFFFFFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title and Icon
                                const Row(
                                  children: [
                                    Text(
                                      "€53.200",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Lexend',
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 24,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Received",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Lexend',
                                  ),
                                ),
                                const SizedBox(height: 16),

                                // Chart Section
                                Expanded(
                                  child: SfCartesianChart(
                                    primaryXAxis:
                                        const CategoryAxis(isVisible: true),
                                    primaryYAxis:
                                        const NumericAxis(isVisible: false),
                                    plotAreaBorderWidth: 0,
                                    borderWidth: 0,
                                    series: <CartesianSeries<SalesData,
                                        String>>[
                                      AreaSeries<SalesData, String>(
                                        dataSource: <SalesData>[
                                          SalesData('Aug', 10),
                                          SalesData('Sep', 40),
                                          SalesData('Oct', 70),
                                          SalesData('Nov', 30),
                                          SalesData('Dec', 100),
                                        ],
                                        xValueMapper: (SalesData sales, _) =>
                                            sales.year,
                                        yValueMapper: (SalesData sales, _) =>
                                            sales.sales,
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xFF4bd7a5),
                                            Color(0x8A4BD7A6),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                    ],
                                    trackballBehavior: TrackballBehavior(
                                      enable: true,
                                      tooltipSettings: const InteractiveTooltip(
                                        enable: true,
                                        color: Colors.black,
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      lineWidth: 2,
                                      lineColor: Colors.black,
                                      activationMode: ActivationMode.singleTap,
                                      builder:
                                          (context, TrackballDetails details) {
                                        final selectedPoint =
                                            details.pointIndex;
                                        final selectedData =
                                            details.chartPointInfo;

                                        // Update selected values
                                        if (selectedPoint != null &&
                                            selectedData != null) {
                                          setState(() {
                                            selectedMonth = selectedData.x;
                                            selectedValue = selectedData.y;
                                          });
                                        }

                                        return Container();
                                      },
                                    ),
                                  ),
                                ),

                                if (selectedMonth != null &&
                                    selectedValue != null)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Text(
                                      "Selected: $selectedMonth - €$selectedValue",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
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
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pending Card
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFFFFFFF),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Text('12',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lexend',
                                  )),
                              Text('Pending',
                                  style: TextStyle(
                                    color: Color(0xFF686767),
                                    fontSize: 15,
                                    fontFamily: 'Lexend',
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Unpaid Card
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFFFFFFF),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text('05',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lexend',
                                  )),
                              Text('Unpaid',
                                  style: TextStyle(
                                    color: Color(0xFF686767),
                                    fontSize: 15,
                                    fontFamily: 'Lexend',
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Upgrade to Enterprise Section
            Center(
              child: Container(
                height: 90,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF07313A),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text('Upgrade to Enterprise',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lexend',
                                  )),
                              SizedBox(height: 5),
                              Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Text(
                                    'Scaled your business with new features.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Lexend',
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 50),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            // Recent Activity Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Recent Activity",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lexend',
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_control_sharp,
                    size: 40,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),

            // Recent Activity Card
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 240,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/img/eze_image.jpg'),
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
                                const Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: Container(
                                height: 90,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFF5F9F9),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              top: 20, left: 20, right: 20),
                                          child: Column(
                                            children: [
                                              Text('€5.200',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 27,
                                                    fontFamily: 'Lexend',
                                                  )),
                                              SizedBox(height: 5),
                                              Text('Amount',
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Lexend',
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, right: 20),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFCAECCD),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                fixedSize: const Size(80, 40),
                                              ),
                                              child: const Text('Paid',
                                                  style: TextStyle(
                                                    color: Color(0xFF5DC95D),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Lexend',
                                                  ))),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text("#0023 ⸱ 04 December 2021",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lexend',
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 240,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/img/eze_image.jpg'),
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
                                      "EZE JORDAN",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontFamily: 'Onest',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Ezejordan@gmail.com",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,
                                        fontFamily: 'Onest',
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: Container(
                                height: 90,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFF5F9F9),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              top: 20, left: 20, right: 20),
                                          child: Column(
                                            children: [
                                              Text('€6.200',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 27,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Lexend',
                                                  )),
                                              SizedBox(height: 5),
                                              Text('Amount',
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Lexend',
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, right: 20),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFCAECCD),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                fixedSize: const Size(80, 40),
                                              ),
                                              child: const Text('Paid',
                                                  style: TextStyle(
                                                    color: Color(0xFF5DC95D),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Lexend',
                                                  ))),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text("#0022 ⸱ 04 December 2021",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lexend',
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0XFFFFFFFF),
        backgroundColor: const Color(0XFF000000),
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.newspaper_rounded, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.stacked_bar_chart_rounded, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          if (index == 2) {
            // If the "add" button (index 2) is pressed, navigate to AddPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddPage()),
            );
          } else {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
      ),
    );
  }
}

extension on TrackballDetails {
  get chartPointInfo => null;
}

class SalesData {
  final String year;
  final double sales;

  SalesData(this.year, this.sales);
}
