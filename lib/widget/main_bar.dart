import 'package:flutter/material.dart';

class MainBar extends StatelessWidget {
  const MainBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text(
            "facebook",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
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
    );
  }
}
