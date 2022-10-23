import 'package:firebase/Home.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenHome(),
    );
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 142, 139, 139),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    hintText: 'User name or Phone number  '),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 142, 139, 139),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    hintText: 'Password '),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen()),
                );
              },
              child: Text(
                'Login',
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future Screen() async {await FirebaseAuth.instance.SignInwithEmailand}
