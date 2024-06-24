import 'package:flutter/material.dart';
import 'package:youtube_clone/data/data.dart';
import 'package:youtube_clone/helper/custom_sliver_app_bar.dart';
import 'package:youtube_clone/screens/home/video_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            final video = videos[index];
            return VideoCard(video: video);
          }, childCount: videos.length))
        ],
      ),
    );
  }
}
