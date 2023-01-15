import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

import 'nowplaying.dart';

class playlist extends StatefulWidget {
  @override
  State<playlist> createState() => _playlist();
}

class _playlist extends State<playlist> {
  final OnAudioQuery _audioQuery = OnAudioQuery();
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  void requestPermission() {
    Permission.storage.request();
  }

  playSong(String? uri) {
    try {
      _audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(uri!)));
      _audioPlayer.play();
    } on Exception {
      log('Erorr parsing song');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('playlist'),
        backgroundColor: Colors.grey,
      ),
      body: FutureBuilder<List<SongModel>>(
        future: _audioQuery.querySongs(
          sortType: null,
          orderType: OrderType.ASC_OR_SMALLER,
          uriType: UriType.EXTERNAL,
          ignoreCase: true,
        ),
        builder: (context, item) {
          if (item.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (item.data!.isEmpty) {
            return Center(
              child: Text('No Songs Found'),
            );
          }
          return ListView.builder(
            itemCount: item.data!.length,
            itemBuilder: ((context, index) {
              return ListTile(
                title: Text(item.data![index].title),
                subtitle: Text(item.data![index].artist ?? 'no'),
                trailing: const Icon(Icons.more_horiz),
                leading: const CircleAvatar(
                  child: Icon(Icons.music_note),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NowPlaying(
                          songModel: item.data![index],
                        ),
                      ));
                },
              );
            }),
          );
        },
      ),
    );
  }
}
