import 'package:flutter/material.dart';
import 'package:guidance/layout/home_layout.dart';
import 'package:guidance/modules/expatriate_login_screen/expatriate_login_screen.dart';
import 'package:guidance/modules/resident_login_screen/resident_login_screen.dart';
import 'package:guidance/styles/colors/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? aboutUs =
        'Guidance is a guide application that helps the expatriate in his first days whatever his purpose of travelling or the duration he will spend in the city, by entering his data as the nationality and the state he is traveling to. Then all people of the same nationality and resident in the same state starts to help him and start providing all the information he needs.';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeLayout(),
                  ),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: Column(
            children: [
              // add image from assets
              Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 300,
              ),
              const SizedBox(
                height: 0,
              ),
              const Text(
                'welcome to Guidance',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                aboutUs,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ResidentLoginScreen()),
                        );
                      },
                      color: appColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Resident',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExpatriateLoginScreen(),
                          ),
                        );
                      },
                      color: appColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Expatriate',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
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
}
