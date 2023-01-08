import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import '../Controller.dart';

class playing extends StatefulWidget {
  const playing({super.key});

  @override
  _AudioPlayerscreenState createState() => _AudioPlayerscreenState();
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

class _AudioPlayerscreenState extends State<playing> {
  late AudioPlayer _audioPlayer;

  final _playlist = ConcatenatingAudioSource(
    children: [
      AudioSource.asset("assets/audio/dd.mp3"),
      AudioSource.asset("assets/audio/ss.mp3"),
      AudioSource.asset("assets/audio/tutsak.mp3"),
    ],
  );

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
    _audioPlayer = AudioPlayer();
    _init();
  }

  Future<void> _init() async {
    await _audioPlayer.setLoopMode(LoopMode.all);
    await _audioPlayer.setAudioSource(_playlist);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  double _currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Container(
              height: 68.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff262932),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                    'assets/images/cover_img.png'))),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Like it Doesnt Hurt',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontFamily: "IranwebSanse",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              'Danito & Athina',
                              style: TextStyle(
                                color: Color(0xff3c4550),
                                fontSize: 11.sp,
                                fontFamily: "IranwebSanse",
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Controls(audioPlayer: _audioPlayer),
                        Container(
                          height: 43.h,
                          child: IconButton(
                            onPressed: _audioPlayer.seekToNext,
                            icon: ImageIcon(
                              AssetImage(
                                "assets/icons/forw.png",
                              ),
                              color: Color(0xff3c4550),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(children: [
                      StreamBuilder<PositionData>(
                        stream: _PositionDataStream,
                        builder: (context, snapshot) {
                          final PositionData = snapshot.data;
                          return SizedBox(
                            width: 370,
                            child: ProgressBar(
                              barHeight: 2,
                              baseBarColor: Color(0xff36383e),
                              bufferedBarColor: Color(0xff36383e),
                              progressBarColor: Palette1.primary,
                              thumbColor: Palette1.primary,
                              timeLabelTextStyle: TextStyle(
                                fontFamily: "IranwebSanse",
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                color: Color(0xff909297),
                              ),
                              progress: PositionData?.position ?? Duration.zero,
                              buffered: PositionData?.bufferedPosition ??
                                  Duration.zero,
                              total: PositionData?.duration ?? Duration.zero,
                              onSeek: _audioPlayer.seek,
                              thumbRadius: 4,
                            ),
                          );
                        },
                      ),
                    ]),
                  ])));
        });
  }
}
