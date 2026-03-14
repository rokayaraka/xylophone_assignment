
import 'package:assignment_3_projectclass/core/constants/app_colors.dart';
import 'package:assignment_3_projectclass/core/constants/app_strings.dart';
import 'package:assignment_3_projectclass/presentation/screen/music/provider/media_provider.dart';
import 'package:assignment_3_projectclass/presentation/screen/music/widget/player_controller.dart';
import 'package:assignment_3_projectclass/presentation/screen/music/widget/song_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title:  Text(AppStrings.appTitle,
        style: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold ,
        ),
      ),
        centerTitle: true,
        backgroundColor: AppColors.surface,
      ),
      body: Column(
        children: [
          PlayerController(),
          Expanded(
            child: Consumer<MediaProvider>(
              builder: (context, mediaProvider, child) {
                final playlist = mediaProvider.playlist;
                return ListView.builder(
                  itemCount: playlist.length,
                  itemBuilder: (context, index) {
                    final song = playlist[index];
                    final isSelected = index == mediaProvider.currentIndex;
                    return SongListItem(
                      song: song,
                      index: index,
                      isPlaying: mediaProvider.isPlaying,
                      isSelected: isSelected,
                      onTap: () {
                        mediaProvider.playSongAtIndex(index);
                      },
                    );
                  },
                );
              },
            ),
          ),
          
        ],
      ),
    );
  }
}