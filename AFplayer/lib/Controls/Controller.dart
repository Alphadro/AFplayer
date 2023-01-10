import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:just_audio/just_audio.dart';

class Controls extends StatelessWidget {
  const Controls({
    super.key,
    required this.audioPlayer,
  });
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (!(playing ?? false)) {
          return IconButton(
            splashRadius: 1,
            onPressed: audioPlayer.play,
            icon: ImageIcon(
              AssetImage(
                "assets/icons/play_btn.png",
              ),
              color: Color(0xffffffff),
              size: 28,
            ),
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
            splashRadius: 1,
            onPressed: audioPlayer.pause,
            icon: Icon(Icons.pause_rounded),
            color: Color(0xffffffff),
          );
        }
        return Icon(Icons.play_arrow_rounded);
      },
    );
  }
}
