import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../pages/COLORS.dart';

Row textField(
        {bool obstrucct = false,
        String hint = 'Enter you name',
        Icon icon = const Icon(
          Icons.person_3_outlined,
          color: Colors.white,
        ),
        String? Function(String?)? validator,
        TextEditingController? controller}) =>
    Row(
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
            validator: validator,
            style: const TextStyle(
                color: Colors.white, height: 25 / 20, fontSize: 20),
            decoration: InputDecoration(
                hintText: hint,
                prefixIcon: icon,
                fillColor: const Color.fromARGB(255, 0, 0, 0),
                filled: true,
                hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9))),
          ),
        ),
      ],
    );

SizedBox btn_(
    {void Function()? onPressed, bool check = true, required String? title}) {
  return SizedBox(
    width: 270,
    height: 45,
    child: ElevatedButton(
      onPressed: check ? onPressed : null,
      style: ButtonStyle(
          backgroundColor: check
              ? MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 162, 143))
              : MaterialStateProperty.all<Color>(
                  const Color.fromARGB(114, 0, 162, 143)),
          overlayColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(211, 0, 0, 0)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
              side: BorderSide(
                  width: 3,
                  color: check
                      ? const Color.fromARGB(218, 0, 162, 143)
                      : const Color.fromARGB(35, 0, 162, 143))))),
      child: Text(
        title!,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );
}

TextButton txtBtn({Text? hint, void Function()? onPressed}) {
  return TextButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(
              const Color.fromRGBO(14, 15, 26, 1))),
      onPressed: onPressed,
      child: hint!);
}

class Follower_Board extends StatefulWidget {
  


  Follower_Board({Key? key,})
      : super(key: key);

  @override
  State<Follower_Board> createState() => _Follower_BoardState();
}

class _Follower_BoardState extends State<Follower_Board> {
  var text_style = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Padding(
      padding:  const EdgeInsets.fromLTRB(10, 20, 15, 0),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 50,child: Image.asset('assets/images/vertex_logo.png',width: 180,),backgroundColor: backgroundColor,),
          SizedBox(height: 20,),Text('profile',style: text_style,)
        ],
      ),
    ),
      Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildStatColumn(7, "POST"),
                    buildStatColumn(44, "FOLLOWERS"),
                    buildStatColumn(74, "FOLLOWING"),
                  ],
                ),
              
              ],
            ),
          ))
    ]);
  }

  Column buildStatColumn(int num, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Text(
            label,
            style: text_style,
          ),
        ),
        Text(
          num.toString(),
          style: text_style,
        ),
      ],
    );
  }
}



  TextButton follow_button({required  void Function()? onPressed}) {
    return TextButton(
        onPressed: () {
          onPressed;
        
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: secondary),
            width: 236,
            height: 30,
            child: Center(
                child: Text(
              'Follow',
              style: const TextStyle(color: Colors.white),
            ))));
  }


Widget messageUnfollow({required bool isFollow,required void Function()? message,required Function() unfollow}) {
    return Row(
      children: [
        TextButton(
            onPressed: () {message;},
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              overlayColor: MaterialStateProperty.all<Color>(backgroundColor),
              splashFactory: InkRipple.splashFactory,
            ),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromARGB(135, 27, 24, 24)),
                width: 110,
                height: 32,
                child: const Center(
                  child: Text(
                    'message',
                    style: TextStyle(color: Colors.white),
                  ),
                ))),
        TextButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              overlayColor: MaterialStateProperty.all<Color>(backgroundColor),
              splashFactory: InkRipple.splashFactory,
            ),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromARGB(135, 27, 24, 24)),
                width: 110,
                height: 32,
                child: Center(
                  child: const Text(
                    'unfollow',
                    style: const TextStyle(color: Colors.white),
                  ),
                )))
      ],
    );
  }

