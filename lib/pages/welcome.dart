import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sowedane/pages/profile.dart';
import 'package:sowedane/pages/signUp.dart';

import '../auth/auth.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF9B34),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text('Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                    )),
                const SizedBox(
                  height: 20,
                ),
                 Text('Easiest Way to Manage your Money',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                    )),
                const SizedBox(
                  height: 20,
                ),
                 Padding(
                  padding: EdgeInsets.only(
                    left: 12,
                    right: 12,
                  ),
                  child:
                      Text('Finance is a gun. Politics is knowing when to pull',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: GoogleFonts.mulish().fontFamily,
                          )),
                ),
                 Text('the Trigger.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: GoogleFonts.mulish().fontFamily,
                    )),
                const SizedBox(
                  height: 70,
                ),
                GestureDetector(
                  onTap: () async {
                    await AuthServices().signInWithGoogle();
                    await Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const Profile()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.13,
                        decoration: BoxDecoration(
                          color: const Color(0xFF000084),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:  Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'SIGN IN WITH GOOGLE',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.mulish().fontFamily,
                                color: Colors.white),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const SignUp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.13,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child:  Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'CREATE AN ACCOUNT',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: GoogleFonts.mulish().fontFamily,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
