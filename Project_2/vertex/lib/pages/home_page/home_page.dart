import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:vertex/pages/COLORS.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user=FirebaseAuth.instance.currentUser!;
  void logout(){
    FirebaseAuth.instance.signOut();


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('you have logged in as '+user.email!),
ElevatedButton(onPressed:(){logout();}, child: Text('logout'))
      ],
    ),),
    backgroundColor: Colors.white,
    
    );
  }
}