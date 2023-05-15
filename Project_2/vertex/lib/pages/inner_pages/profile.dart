import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vertex/component/component_widgets.dart';

import '../COLORS.dart';
import '../inner_pages/Add_post.dart';
import '../inner_pages/Search_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user = FirebaseAuth.instance.currentUser!;
  var isFollow = false;
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        shadowColor: secondary,
        elevation: 10,
        backgroundColor: backgroundColor,
        title: Image.asset(
          'assets/images/VERTEX.png',
          width: 100,
          colorBlendMode: BlendMode.luminosity,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Follower_Board(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 125, 0, 0),
                  child: isFollow
                      ? Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double>(0),
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          backgroundColor),
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
                                  elevation:
                                      MaterialStateProperty.all<double>(0),
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          backgroundColor),
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
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    )))
                          ],
                        )
                      : Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    isFollow = true;
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: secondary),
                                    width: 236,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      'Follow',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    )))),
                          ],
                        ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 320, 20),
              child: Text(
                'Bio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: 400,
              height: 240,
              decoration: BoxDecoration(
                color: Color.fromARGB(172, 6, 8, 14),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: secondary, width: 2),
              ),
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Container(
                      // Add your content inside this container
                      ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 45, 320, 0),
              child: Text(
                'POST',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Divider(
                indent: 20,
                color: Colors.white,
                endIndent: 20,
              ),
            ),
            GridView.count(
              crossAxisCount: 3, // Number of columns in the grid
              crossAxisSpacing: 1, // Spacing between columns
              mainAxisSpacing: 1, // Spacing between rows
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  width: 30,
                  height: 40,
                  color: Colors.white,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.white,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.white,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.white,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.white,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.white,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.white,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.white,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.white,
                ),
                // Add more widgets as needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}
