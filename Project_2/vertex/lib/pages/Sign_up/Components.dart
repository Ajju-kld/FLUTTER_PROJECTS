import 'package:flutter/material.dart';




Row text_field(
    {bool obstrucct = false, String hint = 'Enter you name',Icon icon=const Icon(Icons.person_3_outlined,color: Colors.white,)}) 
    
    
    {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
     icon,
      const SizedBox(width: 20),
      SizedBox(
        height: 45,
        width: 240,
        child: TextFormField(
          obscureText: obstrucct,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintText: hint,
            
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


SizedBox btn_(){
  return SizedBox(
                width: 270,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 0, 162, 143)),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(211, 0, 0, 0)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                          side:const BorderSide(
                              width: 3,
                              color: Color.fromARGB(218, 0, 162, 143))))),
                  child:const Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  
                  ),
                ),
              );
}