import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';

class NowPlaying extends StatefulWidget {
  NowPlaying({Key? key, required this.songModel});
  final SongModel songModel;

  @override
  State<NowPlaying> createState() => _NowPlaying();
}

class _NowPlaying extends State<NowPlaying> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    PlaySong();
  }

  void PlaySong() {
    try {
      _audioPlayer
          .setAudioSource(AudioSource.uri(Uri.parse(widget.songModel.uri!)));
      _audioPlayer.play();
      _isPlaying = true;
    } on Exception {
      log("cannot Parse Song");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    child: Icon(
                      Icons.music_note,
                      size: 80,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    widget.songModel.displayNameWOExt,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.songModel.artist.toString() == "<unkhown>"
                        ? "unkhown Artist"
                        : widget.songModel.artist.toString(),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("0.0"),
                      Expanded(
                          child: Slider(value: 0.0, onChanged: (value) {})),
                      Text("0.0")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous,
                            size: 40,
                          )),
                      IconButton(
                          onPressed: () {
                            _isPlaying = !_isPlaying;
                          },
                          icon: Icon(
                            _isPlaying ? Icons.pause : Icons.play_arrow,
                            size: 40,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next,
                            size: 40,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
