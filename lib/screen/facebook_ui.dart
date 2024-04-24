import 'package:facebook_ui/widget/main_bar.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const ManIcon(
                icon: Icons.home,
              ),
              const ManIcon(
                icon: Icons.people,
              ),
              const ManIcon(
                icon: Icons.ondemand_video_outlined,
              ),
              const ManIcon(
                icon: Icons.notifications,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(profilePic),
                      ),
                      Positioned(
                        bottom: 2,
                        right: 2,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade700,
                          radius: 5,
                          child: const Icon(
                            Icons.menu,
                            size: 8,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class ManIcon extends StatelessWidget {
  const ManIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 30,
    );
  }
}
