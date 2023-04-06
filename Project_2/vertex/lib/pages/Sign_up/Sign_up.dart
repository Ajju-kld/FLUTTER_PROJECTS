import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:vertex/pages/Login/Login.dart';

import '../COLORS.dart';
import 'Components.dart';




Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Login(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, -1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}


class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: Text(
                'Hey There ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: Text(
                'Create an account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 25),
                child: text_field()),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 25),
                child: text_field(hint: 'Enter you email',icon: const Icon(Icons.email_outlined,color: Colors.white,))),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 25),
                child: text_field(hint: 'Password',icon: const Icon(Icons.key_outlined,color: Colors.white),obstrucct: true)),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 25),
                child: text_field(hint: 'Confirm Password',icon: const Icon(Icons.key_outlined,color: Colors.white,),obstrucct: true)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                      overlayColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      checkColor: Color.fromARGB(255, 0, 0, 0),
                      activeColor: Color.fromARGB(255, 0, 0, 0),
                      fillColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(242, 255, 255, 255)),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(fontSize: 12),
                          text: 'By creating  an account, you agree to our\n',
                          children: [
                        TextSpan(
                            text: 'Conditons of Use',
                            style: TextStyle(
                                decoration: TextDecoration.underline)),
                        TextSpan(text: ' and '),
                        TextSpan(
                            text: 'Privacy Notice',
                            style:
                                TextStyle(decoration: TextDecoration.underline))
                      ]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Hero(
                tag: 'sign_up',
                child: btn_(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
              child: Hero(
                tag: 'vertex',
                child: Image.asset(
                  "assets/images/VERTEX.png",
                  width: 250,
                ),
              ),
            ),
        const  Padding(
            padding:  EdgeInsets.fromLTRB(0, 15, 0, 0),
            child:  Text(
                'Already have an account ? ',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
          ),
           TextButton(
              onPressed: () {

Navigator.pop(context);
              Navigator.of(context).push(_createRoute());




                
              },
              child:const Text(
                'login',
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    letterSpacing: 1.5),
              ),
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all<Color>(backgroundColor)),
            )
          ],
        ),
      )),
    );
  }
}