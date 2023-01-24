import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:on_audio_query/on_audio_query.dart';

final SongModelProvider = Provider((ref) => SongModelaudio());

class SongModelaudio extends ChangeNotifier {
 late List<SongModel> _listaudio;
 List<SongModel> get listaudio => _listaudio;

  void setAudio(List< SongModel> list) {
    _listaudio = list;
  }
}
