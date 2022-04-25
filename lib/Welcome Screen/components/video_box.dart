import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'text_on_video.dart';

class VideoBox extends StatefulWidget {
  const VideoBox({Key? key}) : super(key: key);

  @override
  State<VideoBox> createState() => _VideoBoxState();
}

class _VideoBoxState extends State<VideoBox> {
  late VideoPlayerController playerController;
  late VoidCallback listener;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
    playerController = VideoPlayerController.asset(
      'https://www.youtube.com/watch?v=rUWxSEwctFU',
      // 'assets/videos/welcome.mp4',
    );

    _initializeVideoPlayerFuture = playerController.initialize();
  }

  @override
  void dispose() {
    playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          width: size.width,
          height: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the VideoPlayerController has finished initialization, use
                // the data it provides to limit the aspect ratio of the video.
                return AspectRatio(
                  aspectRatio: playerController.value.aspectRatio,
                  // Use the VideoPlayer widget to display the video.
                  child: VideoPlayer(playerController),
                );
              } else {
                // If the VideoPlayerController is still initializing, show a
                // loading spinner.
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        textOnVideo(30, 40, "SALE UP TO", 18, bold: FontWeight.normal),
        textOnVideo(30, 60, "70%", 68, bold: FontWeight.bold),
        textOnVideo(130, 130, "OFF", 18, bold: FontWeight.normal),
      ],
    );
  }
}
