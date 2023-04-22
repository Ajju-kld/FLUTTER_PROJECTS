import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:vertex/pages/COLORS.dart';

class Chat_Page extends StatefulWidget {
  const Chat_Page({super.key});

  @override
  State<Chat_Page> createState() => _Chat_PageState();
}

class _Chat_PageState extends State<Chat_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
        title: const Text(
          'Vertex',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
        ),backgroundColor: backgroundColor,),backgroundColor: backgroundColor,
      body: ListView.separated(itemBuilder:(BuildContext context, int index){
        return ListTile( title: Text('Item $index',style: const TextStyle(color: Colors.white),),);
      }, separatorBuilder:(BuildContext context,int index){return const Divider();}, itemCount: 100),
    );
  }
}