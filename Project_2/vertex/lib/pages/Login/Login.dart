import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('login',style: TextStyle(color: Colors.white),),backgroundColor: Color.fromRGBO(14, 15, 26, 1),)
      ,backgroundColor: Color.fromRGBO(14, 15, 26, 1),body: 
  SafeArea(
    child: SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0,40, 0,100),
        child: SvgPicture.asset('assets/images/LOGIN 1.svg',width: 200,height: 300,),
      ),// login picture padding
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email,color: Colors.white,),
                   const SizedBox(width: 20),
                    SizedBox(
                      height: 45,
                      width: 240,
                      child: TextFormField(style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Enter your email',
                            fillColor: Color.fromARGB(255, 0, 0, 0),
                            filled: true,
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9))),
                      ),
                    ),
                  ],
                ),
      ),// email field padding
      
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30,0,0),
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
                      child: TextFormField(obscureText: true,
                      style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: Color.fromARGB(255, 0, 0, 0),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.white,fontSize: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9))),
                      ),
                    ),
                  ],
                ),
              ),// password fild padding
              Padding(
                padding: const EdgeInsets.fromLTRB(150,0,0,0),
                child: TextButton(style: ButtonStyle(overlayColor:  MaterialStateProperty.all<Color>(
                            Color.fromRGBO(14, 15, 26, 1))),onPressed: (){}, child: Text('Forgotten Password ?',style: TextStyle(color: Colors.white),)),
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
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                              side: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(136, 0, 162, 143))))),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          
                                 color:Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),//button padding
              TextButton(onPressed: ()=>{
                
              }, child: Text("New User? Register",style: TextStyle(color: Colors.white),))
      ],
      
      
      
      ),
    ),
  ),);
  }
}