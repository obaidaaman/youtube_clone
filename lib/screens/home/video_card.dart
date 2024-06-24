import 'package:flutter/material.dart';
import 'package:youtube_clone/data/data.dart';
import 'package:timeago/timeago.dart' as timeago;

class VideoCard extends StatefulWidget {
  final Video video;
  const VideoCard({
    super.key,
    required this.video,
  });

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              widget.video.thumbnailUrl,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    widget.video.duration,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              bottom: 8,
              right: 8,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CircleAvatar(
                  foregroundImage:
                      NetworkImage(widget.video.author.profileImageUrl),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Text(
                      widget.video.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                    Flexible(
                      child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          '${widget.video.author.username} . ${widget.video.viewCount} views . ${timeago.format(widget.video.timestamp)} '),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
