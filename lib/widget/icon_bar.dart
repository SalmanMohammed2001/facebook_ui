import 'package:flutter/material.dart';

class IconBar extends StatelessWidget {
  const IconBar({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
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
