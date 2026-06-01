import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class MediaHubScreen extends StatelessWidget {
  const MediaHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Hub'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_outline,
              size: 72,
              color: AppColors.primary.withAlpha(128),
            ),
            const SizedBox(height: 16),
            const Text(
              'Media Hub Services',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'YouTube, SoundCloud, IPTV-Org, and custom streams.',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
