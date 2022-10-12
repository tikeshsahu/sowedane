import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sowedane/pages/signUp.dart';

import '../auth/auth.dart';
import 'profile.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF343343),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 13,
            ),
            Text(
              'SIGN IN',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: GoogleFonts.mulish().fontFamily,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 11,
            ),
            Text(
              'WELCOME BACK :)',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: GoogleFonts.mulish().fontFamily,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Text(
              'To Keep Connected with us please login with your Personal  '
              'information by address and password.',
              style: TextStyle(
                  fontSize: 12.5,
                  fontFamily: GoogleFonts.mulish().fontFamily,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 233, 227, 227)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34),
                  child: Text(
                    'Email ID*',
                    style: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                        color: Color.fromARGB(255, 238, 234, 234),
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(14),
                          topLeft: Radius.circular(14)),
                      color: const Color(0xFF454451),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 34),
                  child: Text(
                    'Password*',
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 232, 232),
                        fontSize: 11,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(14),
                          topLeft: Radius.circular(14)),
                      color: const Color(0xFF454451),
                    ),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.remove_red_eye_rounded,
                      color: Color.fromARGB(255, 204, 200, 200),
                      size: 17,
                    ),
                    SizedBox(
                      width: 15,
                    )
                  ],
                ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontFamily: GoogleFonts.mulish().fontFamily,
                              color: Color.fromARGB(255, 224, 213, 213),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 1.25,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9B34),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          'SIGN IN',
                          style: TextStyle(
                            fontFamily: GoogleFonts.mulish().fontFamily,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Column(
                  children: [
                    Text(
                      'Or you can Join With',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: GoogleFonts.mulish().fontFamily,
                          color: Color.fromARGB(255, 224, 213, 213),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        CircleAvatar(
                          radius: 19,
                          backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2021/08/16/08/55/facebook-6549798_960_720.jpg',
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () async{
                  await AuthServices().signInWithGoogle();
                  await Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => const Profile()));
                },
                          child: CircleAvatar(
                            radius: 19,
                            backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/145/145804.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        CircleAvatar(
                          radius: 19,
                          backgroundImage: NetworkImage(
                            'https://acmconnect.com/wp-content/uploads/2015/07/Screenshot-1276-1024x576.png',
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(
                  "Don't have an Account?Click here ",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: GoogleFonts.mulish().fontFamily,
                    color: Color.fromARGB(255, 224, 213, 213),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignUp()));
                    },
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 13,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
