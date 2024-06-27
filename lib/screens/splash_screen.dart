import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_ui/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//first shwo splash screen wait 3 second then go to login page
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (contex) => const WelcomeScreen(),
          ),
              (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff007A8C),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SvgPicture.asset(
            "assets/images/Logo.svg",
            height: 84,
            width: 261,
            fit: BoxFit.cover                        ,
          ),
        ),
      ),
    );
  }
}
