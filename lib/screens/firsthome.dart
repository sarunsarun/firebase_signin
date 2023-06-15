import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class firsthome_page extends StatefulWidget {
  const firsthome_page({Key? key}) : super(key: key);

  @override
  State<firsthome_page> createState() => _firsthome_pageState();
}

// ignore: camel_case_types
class _firsthome_pageState extends State<firsthome_page> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Logout"),
        onPressed: () {
          FirebaseAuth.instance.signOut().then((value) {
            // ignore: avoid_print
            print("Signed Out");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignInScreen()));
          });
        },
      ),
    );
  }
}
