import 'package:flutter/material.dart';




class FocusNotifier extends ChangeNotifier {
  bool _isFocused = false;

  bool get isFocused => _isFocused;

  set isFocused(bool value) {
    _isFocused = value;
    notifyListeners();
  }
}

class Landing_Page extends StatelessWidget {
 Landing_Page({super.key});
final FocusNotifier focusNotifier = FocusNotifier();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(14, 15, 26, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.green,
                ),
                Image.asset(
                  "assets/images/VERTEX.png",
                  width: 200,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10,0, 30),
                  child: SizedBox(
                    width: 310,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                
                
                      
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
                      child: Text("LOGIN",style: TextStyle(color: focusNotifier._isFocused ? Color.fromARGB(255, 0, 162, 143):Colors.white,fontSize: 20),),
                    ),
                  ),
                ),
                SizedBox(
                  width: 310,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      
                          
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(181, 0, 162, 143)),
                        overlayColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(211, 0, 0, 0)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                            side: BorderSide(
                                width: 3,
                                color: Color.fromARGB(218, 0, 162, 143))))),
                    child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
