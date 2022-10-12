import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sowedane/pages/profile.dart';
import 'package:sowedane/pages/signIn.dart';

import '../auth/auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343343),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            const Text(
              'SIGN UP',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 13,
            ),
            const Text(
              'HELLO BEAUTIFUL.!',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            const Text(
              'Enter your information below or login with Create an                           '
              'account',
              style: TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 204, 200, 200)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 38,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 34),
              child: Text(
                'User Name*',
                style: TextStyle(
                    color: Color.fromARGB(255, 204, 200, 200),
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: MediaQuery.of(context).size.height / 16,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      topLeft: Radius.circular(14)),
                  color: Color(0xFF454451),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.person,
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
              height: MediaQuery.of(context).size.height / 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 34),
              child: Text(
                'Email ID*',
                style: TextStyle(
                    color: Color.fromARGB(255, 204, 200, 200),
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: MediaQuery.of(context).size.height / 16,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      topLeft: Radius.circular(14)),
                  color: Color(0xFF454451),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 34),
              child: Text(
                'Password*',
                style: TextStyle(
                    color: Color.fromARGB(255, 204, 200, 200),
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: MediaQuery.of(context).size.height / 16,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      topLeft: Radius.circular(14)),
                  color: Color(0xFF454451),
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
              height: MediaQuery.of(context).size.height / 65,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: value,
                    checkColor: Colors.black, // color of tick Mark
                    activeColor: Colors.white,
                    focusColor: Colors.white,
                    onChanged: (bool? res) {
                      setState(() {
                        this.value = res!;
                      });
                    }),
                Text.rich(TextSpan(
                    text: 'I agree to the ',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFFF99834),
                      fontFamily: GoogleFonts.mulish().fontFamily,
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Terms & conditions, Privacy Policy ',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFF99834),
                          fontFamily: GoogleFonts.mulish().fontFamily,
                        ),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      TextSpan(
                        text: 'Fees',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFF99834),
                          fontFamily: GoogleFonts.mulish().fontFamily,
                        ),
                      )
                    ]))
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
                    color: const Color(0xFFFF9B34),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'SIGN IN',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: GoogleFonts.mulish().fontFamily,
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
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 19,
                      backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2021/08/16/08/55/facebook-6549798_960_720.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () async {
                        await AuthServices().signInWithGoogle();
                        await Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Profile()));
                      },
                      child: const CircleAvatar(
                        radius: 19,
                        backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/145/145804.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const CircleAvatar(
                      radius: 19,
                      backgroundImage: NetworkImage(
                        'https://acmconnect.com/wp-content/uploads/2015/07/Screenshot-1276-1024x576.png',
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?Click here",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: GoogleFonts.mulish().fontFamily,
                    color: Color.fromARGB(255, 224, 213, 213),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignIn()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 13,
                          fontFamily: GoogleFonts.mulish().fontFamily,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
