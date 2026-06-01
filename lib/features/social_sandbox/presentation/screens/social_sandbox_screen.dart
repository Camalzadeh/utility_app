import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class SocialSandboxScreen extends StatelessWidget {
  const SocialSandboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Sandbox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.tag,
              size: 72,
              color: AppColors.accent.withAlpha(128),
            ),
            const SizedBox(height: 16),
            const Text(
              'Social Sandbox',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Reddit client, Instagram parser, WhatsApp tools & Receive-SMS.',
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
