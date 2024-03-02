import 'package:admin_web_panel/view/main_screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAWwV7EAjeVKI2n3ZXTmzJpBBBXxIZBWmw",
        authDomain: "foodpandaclone-f3bdc.firebaseapp.com",
        projectId: "foodpandaclone-f3bdc",
        storageBucket: "foodpandaclone-f3bdc.appspot.com",
        messagingSenderId: "167560947670",
        appId: "1:167560947670:web:2bf81a08ea7b2ec89f2677",
        measurementId: "G-3Q25SXXT28"
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Web Panel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black
      ),
      home: HomeScreen(),
    );
  }
}


