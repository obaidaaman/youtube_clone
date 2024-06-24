import 'package:flutter/material.dart';
import 'package:youtube_clone/data/data.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Image.asset('assets/yt_logo_dark.png'),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white)),
        IconButton(
          onPressed: () {},
          iconSize: 40,
          icon: CircleAvatar(
            foregroundImage: NetworkImage(currentUser.profileImageUrl),
          ),
        )
      ],
    );
  }
}
