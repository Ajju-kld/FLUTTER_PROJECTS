import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:vertex/component/component_widgets.dart';
import 'package:vertex/pages/utils.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({super.key});

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  final  _chat_message=TextEditingController();
  final List<Message> _messages = [
    Message(text: 'Hello', itsMe: true, dateTime: DateTime(2022, 1, 1, 12, 32)),
    Message(text: 'Hi', itsMe: false, dateTime: DateTime(2022, 1, 1, 12, 32)),
    Message(
        text: 'How are you?',
        itsMe: true,
        dateTime: DateTime(2022, 1, 2, 9, 33)),
    Message(
        text: "I'm good. How about you?",
        itsMe: false,
        dateTime: DateTime(2022, 1, 2, 10, 12)),
  ];
@override
  void dispose() {
    // TODO: implement dispose
    _chat_message.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
              child: GroupedListView<Message, DateTime>(
                  elements: _messages,
                  groupBy: (message) => DateTime(
                        message.dateTime.year,
                        message.dateTime.month,
                        message.dateTime.day,
                      ),
                  floatingHeader: false,
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: false,
                  groupHeaderBuilder: (Message message) => Center(
                        child: SizedBox(
                          height: 40,
                          child: Card(
                            color: backgroundColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                DateFormat.yMMMd().format(message.dateTime),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                  itemBuilder: (BuildContext context, Message message) {
                    return Chat_Bubble(message: message);
                  })),
          Container(
            height: 
          60,
            color: Color.fromARGB(255, 0, 0, 0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.white,
                    )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                  child: TextField(keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                   controller: _chat_message,
                   
                      
style: TextStyle(color: Colors.white,fontSize: 17),
                      decoration: InputDecoration(
                          hintText: "type your message",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 2)),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: secondary, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintStyle: TextStyle(color: Colors.white))),
                )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
if (_chat_message.text.isEmpty) {
  return ;
}
else{
  setState(() {
   
    _messages.add(Message(text: _chat_message.text, itsMe: true, dateTime: DateTime.now()));
  });
  _chat_message.clear();
}

                    },
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Chat_Bubble extends StatelessWidget {
  final Message message;

  const Chat_Bubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: (message.itsMe) ? Alignment.centerLeft : Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: message.itsMe ? Colors.black : secondary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
              topRight: message.itsMe ? Radius.circular(18) : Radius.zero,
              topLeft: message.itsMe ? Radius.zero : Radius.circular(18),
            ),
          ),
          child: Column(
            crossAxisAlignment: message.itsMe
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(message.text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 4,
              ),
              Text(
                '${message.dateTime.hour}:${message.dateTime.minute}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
} 

class Message {
  final String text;
  final bool itsMe;
  final DateTime dateTime;

  const Message(
      {required this.text, required this.itsMe, required this.dateTime});
}
