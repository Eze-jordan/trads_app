import 'package:flutter/material.dart';
import 'package:trad_app/ecrans/home_page.dart';
import 'package:trad_app/ecrans/screens1.dart';
import 'package:trad_app/ecrans/screens2.dart';
import 'package:trad_app/ecrans/screens3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose(); // Libère le contrôleur
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Le PageView pour les écrans
          PageView(
            controller: pageController,
            children: const [
              Screens1(),
              Screens2(),
              Screens3(),
            ],
          ),
          // Logo au centre en haut
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 50), // Ajout de marge en haut
              child: Image.asset(
                "assets/img/LOGO3.png",
                width: 80,
                height: 80,
              ),
            ),
          ),
          // Contenu en bas
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SmoothPageIndicator(
                        controller: pageController,
                        count: 3,
                        effect: const WormEffect(
                          spacing: 8.0,
                          dotHeight: 12.0,
                          dotWidth: 25.0,
                          activeDotColor: Color(0xFF2CD196),
                          dotColor: Colors.grey,
                        ),
                        onDotClicked: (index) {
                          pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2CD196),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
