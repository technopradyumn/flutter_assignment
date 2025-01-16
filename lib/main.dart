import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main_screen.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBic2vJAV_5tlBd8mEoNYijDCvU-0fOmIU",
          authDomain: "flutter-assignment-ff2e1.firebaseapp.com",
          projectId: "flutter-assignment-ff2e1",
          storageBucket: "flutter-assignment-ff2e1.firebasestorage.app",
          messagingSenderId: "963618460145",
          appId: "1:963618460145:web:c6f8551546969d21dfb450",
          measurementId: "G-BY0HYNH68E"
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: FirebaseAuth.instance.currentUser != null
          ? MainScreen()
          : LoginScreen(),
    );
  }
}