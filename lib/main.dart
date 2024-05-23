import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyD1ZAofC1XH5feJvwq8_7c_YQotKEtceog',
          appId: '1:494769175859:android:0e38fccc2a6d8636bed246',
          messagingSenderId: '',
          projectId: 'fir-demo-678f4',
          storageBucket: 'fir-demo-678f4.appspot.com'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
