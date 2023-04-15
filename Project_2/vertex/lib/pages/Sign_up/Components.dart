import 'package:flutter/material.dart';




Row text_field(
    {bool obstrucct = false,
    String hint = 'Enter you name',
    Icon icon=const Icon(Icons.person_3_outlined,color: Colors.white,),
    TextEditingController ?controller }) 
    
    
    {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
   
      SizedBox(
        height: 60,
        width: 300,
        child: TextFormField(
      cursorHeight: 25,
      obscuringCharacter: '*',
          controller: controller,
          obscureText: obstrucct,
          style: TextStyle(color: Colors.white, height: 25 / 20,fontSize: 20),
          decoration: InputDecoration(
              hintText: hint,
            prefixIcon: icon,
          
              fillColor: Color.fromARGB(255, 0, 0, 0),
              filled: true,
              hintStyle: TextStyle(color: Colors.white, fontSize: 15),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(9))),
              
        ),
      ),
    ],
  );
  
}


SizedBox btn_({void Function() ?onPressed,bool ?check}){
  return SizedBox(
                width: 270,
                height: 45,
                child: ElevatedButton(
                  
                  onPressed: 
                  check!?onPressed:null ,
                  style: ButtonStyle(
                      backgroundColor: check? MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 0, 162, 143)):
                         MaterialStateProperty.all<Color>(
                  Color.fromARGB(114, 0, 162, 143)) ,
                      overlayColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(211, 0, 0, 0)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          side: BorderSide(
                              width: 3,
                              color:check?Color.fromARGB(218, 0, 162, 143):Color.fromARGB(35, 0, 162, 143))))),
                  child:const Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  
                  ),
                ),
              );
}