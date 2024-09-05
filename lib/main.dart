import 'package:flutter/material.dart';
import 'package:seller_app_delivery/splashScreen/splash_screen.dart';

 Future<void> main() async {

   WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ORDELI SELLER',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: SplashScreen(

      ),
    );
  }
}


