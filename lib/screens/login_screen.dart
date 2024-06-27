import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:travel_app_ui/screens/home_screen.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(horizontal:20 ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/SignIn.png",
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            child: Column(
              children: [
                Container(
                  width: screenSize.width * .9,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Let's ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff336749),
                            ),
                          ),
                          Text(
                            "Travel ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff007A8C),
                            ),
                          ),
                          Text(
                            "You ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff336749),
                            ),
                          ),
                          Text(
                            "in",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff007A8C),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Discover the World with Every Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,

                          color: Color(0xff336749),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 45,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff336749),
                                ),
                              ),
                              hintText: "Email or Phone Number"),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 45,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff336749),
                                ),
                              ),
                              hintText: "Password"),
                        ),
                      ),
                      //<<-------------->> forgot button <<-------------->>//

                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Color(0xff33415C)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //<<-------------->> Signin button <<-------------->>//

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const HomeScreen(),),);

                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(double.infinity, 40),
                          backgroundColor: const Color(0xff007A8C),
                        ),

                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                          alignment: Alignment.topCenter,
                          child: Text("or sign in with")),
                      const SizedBox(
                        height: 10,
                      ),
                      //<<-------------->> signin with google or facebook <<-------------->>//

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomCard(
                            icon: Image.asset(
                              "assets/images/google.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CustomCard(
                            icon: Image.asset(
                              "assets/images/facebook.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "I don't have a account?",
                            style: TextStyle(
                              color: Color(0xff33415C),
                            ),
                          ))
                    ],
                  ),
                ),
                //<<-------------->> signup elevated button <<-------------->>//

                const SizedBox(height: 30,),
                SizedBox(
                  height: 40,
                  width: screenSize.width * .82,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(double.infinity, 40),
                      backgroundColor: const Color(0xffF6F6F6),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up       ",
                      style: TextStyle(color: Color(0xff007A8C),),
                    ),
                  ),
                ),


              ],
            ),
          )

        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Widget icon;
  final String? text;

  const CustomCard({
    super.key,
    required this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: icon,
      ),
    );
  }
}
