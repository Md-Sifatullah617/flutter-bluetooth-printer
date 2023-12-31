import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:printer/view/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double height1 = 0;
  double height2 = 0;
  double height3 = 0;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const MyHomePage());
    });
    animateContainers();
    super.initState();
  }

  void animateContainers() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      height1 = Get.height * 0.5;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      height2 = Get.height * 0.4;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      height3 = Get.height * 0.3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(),
          Positioned(
            top: Get.height * 0.3,
            child: const Text(
              'Token Pro',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
                height: height1,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Get.width * 0.5),
                    topRight: Radius.circular(Get.width * 0.5),
                  ),
                ),
              )),
          Positioned(
              bottom: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeIn,
                height: height2,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade300,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Get.width * 0.5),
                    topRight: Radius.circular(Get.width * 0.5),
                  ),
                ),
              )),
          Positioned(
              bottom: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                curve: Curves.easeIn,
                height: height3,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade400,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Get.width * 0.5),
                    topRight: Radius.circular(Get.width * 0.5),
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Powered by ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: 'TMT-Soft',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, 0);
//     path.quadraticBezierTo(
//         size.width * 0.25, size.height, size.width * 0.5, size.height);
//     path.quadraticBezierTo(
//         size.width * 0.75, size.height, size.width, size.height * 0.8);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
