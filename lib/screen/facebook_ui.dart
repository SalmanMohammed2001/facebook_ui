import 'package:flutter/material.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "facebook",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(
                  flex: 1,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.shade800,
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.shade800,
                  child: const Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 15,
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
