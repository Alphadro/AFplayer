import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class Audio extends StatefulWidget {
  @override
  State<Audio> createState() => _Audio();
}

class _Audio extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const AudioPlayerscreenState(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PositionData {
  const PositionData(
    this.position,
    this.bufferedPosition,
    this.duration,
  );
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

class AudioPlayerscreenState extends StatefulWidget {
  const AudioPlayerscreenState({super.key, required this.title});

  final String title;

  @override
  State<AudioPlayerscreenState> createState() => _AudioPlayerscreenState();
}

class _AudioPlayerscreenState extends State<AudioPlayerscreenState> {
  late AudioPlayer _audioPlayer;

  Stream<PositionData> get _PositionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
        (position, bufferedPosition, duration) => PositionData(
          position,
          bufferedPosition,
          duration ?? Duration.zero,
        ),
      );

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset("Assets/audio/tutsak.mp3");
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var audioPlayer;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<PositionData>(
            stream: _PositionDataStream,
            builder: (context, snapshot) {
              final PositionData = snapshot.data;
              return ProgressBar(
                barHeight: 8,
                baseBarColor: Colors.grey,
                bufferedBarColor: Colors.blue,
                progressBarColor: Colors.red,
                thumbColor: Colors.purple,
                timeLabelTextStyle: TextStyle(color: Colors.pink, fontSize: 35),
                progress: PositionData?.position ?? Duration.zero,
                buffered: PositionData?.bufferedPosition ?? Duration.zero,
                total: PositionData?.duration ?? Duration.zero,
                onSeek: _audioPlayer.seek,
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Controls(audioPlayer: _audioPlayer),
           Row(
            children: [
              IconButton(
                  onPressed: audioPlayer.seekToPrevious,
                  icon: Icon(Icons.skip_previous_rounded)),
              IconButton(
                  onPressed: audioPlayer.seekToNext,
                  icon: Icon(Icons.skip_next_rounded))
            ],
          ),
        ],
      ),
    );
  }
}

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
            onPressed: audioPlayer.play,
            icon: Icon(Icons.play_arrow_rounded),
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
            onPressed: audioPlayer.pause,
            icon: Icon(Icons.pause_rounded),
          );
        }
        return Icon(Icons.play_arrow_rounded);
      },
    );
  }
}
