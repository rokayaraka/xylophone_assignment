import 'package:assignment_3_projectclass/core/constants/app_colors.dart';
import 'package:assignment_3_projectclass/core/constants/app_strings.dart';
import 'package:assignment_3_projectclass/presentation/screen/music/music.dart';
import 'package:assignment_3_projectclass/presentation/screen/youtube/youtube_web.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        title: const Text('Home Screen', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Youtube()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              label: Text(AppStrings.youtubeTitle),
              icon: Icon(Icons.video_library),
            ),

            SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MusicPlayer()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
              ),
              child: Text(AppStrings.appTitle),
            ),
          ],
        ),
      ),
    );
  }
}
