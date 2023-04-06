import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertex/pages/Sign_up/Sign_up.dart';



Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Sign_up(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
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















class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor:const Color.fromRGBO(14, 15, 26, 1),
      ),
      backgroundColor:const Color.fromRGBO(14, 15, 26, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 100),
                child: SvgPicture.asset(
                  'assets/images/LOGIN 1.svg',
                  width: 200,
                  height: 300,
                ),
              ), // login picture padding
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      height: 45,
                      width: 240,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Enter your email',
                            fillColor: const Color.fromARGB(255, 0, 0, 0),
                            filled: true,
                            hintStyle:
                                const TextStyle(color: Colors.white, fontSize: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9))),
                      ),
                    ),
                  ],
                ),
              ), // email field padding

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.key_rounded,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      height: 45,
                      width: 240,
                      child: TextFormField(
                        obscureText: true,
                        style:const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: const Color.fromARGB(255, 0, 0, 0),
                            filled: true,
                            hintStyle:
                      const          TextStyle(color: Colors.white, fontSize: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9))),
                      ),
                    ),
                  ],
                ),
              ), // password fild padding
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                child: TextButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(14, 15, 26, 1))),
                    onPressed: () {},
                    child: const Text(
                      'Forgotten Password ?',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 3),
                child: Hero(
                  tag: "Login_btn",
                  child: SizedBox(
                    width: 270,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                        //   return Login();
                        // }));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 162, 143)),
                          overlayColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(211, 0, 0, 0)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  side: BorderSide(
                                      width: 3,
                                      color:
                                          Color.fromARGB(136, 0, 162, 143))))),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ), //button padding
              TextButton(
                  onPressed: () => {
                  Navigator.pop(context),
              Navigator.of(context).push(_createRoute())
                  },
                  child: Text(
                    "New User? Register",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
