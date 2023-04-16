import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

Row textField(
    {bool obstrucct = false,
    String hint = 'Enter you name',
    Icon icon = const Icon(
      Icons.person_3_outlined,
      color: Colors.white,
    ),
    TextEditingController? controller}) => Row(
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
