import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class DataToolsScreen extends StatelessWidget {
  const DataToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data & Tools'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_outlined,
              size: 72,
              color: AppColors.secondary.withAlpha(128),
            ),
            const SizedBox(height: 16),
            const Text(
              'Data & Tools',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Weather forecasting, translations, wallpapers & Otaku tracker.',
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
