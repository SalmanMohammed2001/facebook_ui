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
          NewPostBar(profilePic: profilePic),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            color: Colors.black38,
            thickness: 10,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 176,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 100,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(15)),
                      child: index == 0
                          ? Stack(children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(profilePic),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                bottom: 45,
                                left: 1,
                                right: 1,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Create \nStory",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )
                            ])
                          : Stack(
                              children: [
                                Container(
                                  width: 100,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            profilePic,
                                          ),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.2),
                                            BlendMode.darken,
                                          ))),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(profilePic),
                                    ),
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 5,
                                      bottom: 5,
                                    ),
                                    child: Text(
                                      " Ajith Kumar",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                              ],
                            )),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
