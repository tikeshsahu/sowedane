import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sowedane/pages/welcome.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(255, 216, 25, 133),
              ),
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.8,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        FirebaseAuth.instance.currentUser!.photoURL!),
                    radius: 60,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    FirebaseAuth.instance.currentUser!.displayName!,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Email',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    FirebaseAuth.instance.currentUser!.email!,
                    style: const TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.all(10),
                    color: Color.fromARGB(255, 56, 53, 224),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      'Okay',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Welcome()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
