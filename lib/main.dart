import 'package:blood_donation/add.dart';
import 'package:blood_donation/home.dart';
import 'package:blood_donation/login.dart';
import 'package:blood_donation/main_page.dart';
import 'package:blood_donation/update.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/add': (context) => const AddUser(),
        '/update': (context) => const UpdateDonor(),
        '/login':(context)=>const LoaginPage(),
         '/main':(context)=>const MainPage(),
      },
      initialRoute: '/login',
       //home: LoaginPage(),
    );
  }
}
