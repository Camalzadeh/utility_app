import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class DeveloperSuiteScreen extends StatelessWidget {
  const DeveloperSuiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developer Suite'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.code_rounded,
              size: 72,
              color: Colors.amber.withAlpha(128),
            ),
            const SizedBox(height: 16),
            const Text(
              'Developer Suite',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Scraper engine and Consumer API sandbox.',
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
