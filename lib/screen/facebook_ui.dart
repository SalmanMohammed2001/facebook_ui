import 'package:facebook_ui/widget/icon_bar.dart';
import 'package:facebook_ui/widget/main_bar.dart';
import 'package:facebook_ui/widget/new_post_bar.dart';
import 'package:flutter/material.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  final profilePic =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsQ-YHX2i3RvTDDmpfnde4qyb2P8up7Wi3Ww&usqp=CAU";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(children: [
          const MainBar(),
          const SizedBox(
            height: 15,
          ),
          IconBar(profilePic: profilePic),
          const Divider(
            thickness: 0.6,
          ),
          NewPostBar(profilePic: profilePic)
        ]),
      ),
    );
  }
}
