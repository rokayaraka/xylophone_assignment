import 'package:assignment_3_projectclass/domain/entities/song.dart';

class SongsModel extends Song {
  SongsModel({
    required super.title,
    required super.artist,
    required super.url,
    required super.durationSeconds,
  });

  static List<Song> getSampleSongs() {
    return [
      SongsModel(
        title: 'Lofi Study',
        artist: 'FASSounds',
        url:
            'https://cdn.pixabay.com/download/audio/2022/05/27/audio_1808fbf07a.mp3',
        durationSeconds: 146,
      ),
      SongsModel(
        title: 'Good Night',
        artist: 'FASSounds',
        url:
            'https://cdn.pixabay.com/download/audio/2022/10/14/audio_9939f792cb.mp3',
        durationSeconds: 147,
      ),
      SongsModel(
        title: 'Cinematic Time Lapse',
        artist: 'Lexin_Music',
        url:
            'https://cdn.pixabay.com/download/audio/2022/08/02/audio_884fe92c21.mp3',
        durationSeconds: 135,
      )
    ];
  }
}
