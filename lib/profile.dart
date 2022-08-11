import 'package:flutter/material.dart';
import 'package:my_app/login.dart';
import 'login.dart';

class ProfileScreen extends StatelessWidget {
  final String abc;
  const ProfileScreen(this.abc,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: Text(abc),
        ),
      ),
    );
  }
}