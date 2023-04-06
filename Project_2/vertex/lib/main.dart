import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vertex/pages/Landing_page/landing_page.dart';
import 'package:vertex/pages/Login/Login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:  Landing_Page(),
      routes: {
        'login':(context) {return Login();
      }}
    );
  }
}

