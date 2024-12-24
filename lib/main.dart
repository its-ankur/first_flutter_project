import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Greetings, Developer!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 4.0, // Adds shadow to the entire AppBar
        shadowColor: Colors.black54,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/welcome_background.png'),
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Text(
              "We're excited to have you here!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'This app is crafted to teach you the fundamentals and get you comfortable with building mobile applications with Flutter.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
