import 'dart:developer';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens-main/provider.dart';
import 'package:flutter_application_1/widgets/edittag.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/screens-main/Page2.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:rxdart/rxdart.dart';
import '../Controls/Controller.dart';

class Page3 extends ConsumerStatefulWidget {
  const Page3({
    Key? key,
  });

  @override
  ConsumerState<Page3> createState() => _AudioPlayerscreenState();
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

class _AudioPlayerscreenState extends ConsumerState<Page3> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  late SongModel songModel;
  
  @override
  void initState() {
    super.initState();

    PlaySong();
  }

  void PlaySong() {
    try {
      _audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(songModel.uri!)));
      _audioPlayer.play();
      _isPlaying = true;
    } on Exception {
      log("cannot Parse Song");
    }

  }
    void getAudio() {
    
     ref.read(SongModelProvider).setAudio();
    
  }

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
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  bool f1 = true;
  bool shuffel = true;
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                color: Palette.primary,
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: f1
                                    ? GestureDetector(
                                        onTap: () {
                                          f1 = false;
                                          setState(() {});
                                        },
                                        child: ImageIcon(
                                          AssetImage(
                                            "assets/icons/fave.png",
                                          ),
                                          color: Palette1.primary,
                                        )

                                        // Colors
                                        )
                                    : GestureDetector(
                                        onTap: () {
                                          f1 = true;
                                          setState(() {});
                                        },
                                        child: ImageIcon(
                                          AssetImage(
                                            "assets/icons/fave_b.png",
                                          ),
                                          color: Palette1.primary,
                                        ),
                                      )),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) => edittag())));
                                  });
                                },
                                child: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff3c4550),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Page2())));
                            });
                          },
                          child: ImageIcon(
                            AssetImage(
                              "assets/icons/arrow_down.png",
                            ),
                            color: Color(0xff3c4550),
                            size: 15,
                          ),
                        ),
                        Text(
                          "Album List Plaing",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "IranwebSanse",
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.white38,
                        //height: MediaQuery.of(context).size.width,
                        //width: MediaQuery.of(context).size.width,
                        //color: Colors.amber,
                        alignment: Alignment.center,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 30.h),
                              Container(
                                width: 200.w,
                                height: 200.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/cover_img.png"),
                                      fit: BoxFit.cover),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xcc000000),
                                      spreadRadius: 0,
                                      blurRadius: 20,
                                      offset: Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                  border: Border.all(
                                    color: const Color(0xff6c5dd2),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.h),
                              Container(
                                height: 30.h,
                                child: Text(
                                  "Love On the Brain",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "IranwebSanse",
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                height: 20.h,
                                child: Text(
                                  "Danito & Athina",
                                  style: TextStyle(
                                    color: Color(0xff3c4550),
                                    fontFamily: "IranwebSanse",
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                            ]),
                      ),
                    ),
                    Column(
                      children: [
                        StreamBuilder<PositionData>(
                          stream: _PositionDataStream,
                          builder: (context, snapshot) {
                            final PositionData = snapshot.data;
                            return SizedBox(
                              width: 360,
                              child: ProgressBar(
                                barHeight: 3,
                                baseBarColor: Color(0xff36383e),
                                bufferedBarColor: Color(0xff36383e),
                                progressBarColor: Palette1.primary,
                                thumbColor: Palette1.primary,
                                timeLabelTextStyle: TextStyle(
                                  fontFamily: "IranwebSanse",
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff909297),
                                ),
                                progress:
                                    PositionData?.position ?? Duration.zero,
                                buffered: PositionData?.bufferedPosition ??
                                    Duration.zero,
                                total: PositionData?.duration ?? Duration.zero,
                                onSeek: _audioPlayer.seek,
                                thumbRadius: 6,
                              ),
                            );
                          },
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: shuffel
                                  ? GestureDetector(
                                      onTap: () {
                                        shuffel = false;
                                        _audioPlayer
                                            .setShuffleModeEnabled(true);
                                        setState(() {});
                                      },
                                      child: ImageIcon(
                                        AssetImage(
                                          "assets/icons/rep.png",
                                        ),
                                        color: Palette1.primary,
                                      )

                                      // Colors
                                      )
                                  : GestureDetector(
                                      onTap: () {
                                        shuffel = true;

                                        setState(() {});
                                      },
                                      child: ImageIcon(
                                        AssetImage(
                                          "assets/icons/set.png",
                                        ),
                                        color: Palette1.primary,
                                      ),
                                    ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: _audioPlayer.seekToPrevious,
                                icon: ImageIcon(
                                  AssetImage(
                                    "assets/icons/back.png",
                                  ),
                                  color: Color(0xff3c4550),
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              //color: Color(0xffffffff),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Color(0x116f2dff),
                                  ),
                                  CircleAvatar(
                                    radius: 43,
                                    backgroundColor: Color(0x116f2dff),
                                  ),
                                  CircleAvatar(
                                    radius: 36,
                                    backgroundColor: Color(0x116f2dff),
                                  ),
                                  CircleAvatar(
                                    radius: 29,
                                    backgroundColor: Palette1.primary,
                                  ),
                                  Controls(audioPlayer: _audioPlayer),
                                ],
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: _audioPlayer.seekToNext,
                                icon: ImageIcon(
                                  AssetImage(
                                    "assets/icons/next.png",
                                  ),
                                  color: Color(0xff3c4550),
                                ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () => {},
                                icon: ImageIcon(
                                  AssetImage(
                                    "assets/icons/set.png",
                                  ),
                                  color: Palette1.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
