import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/media_hub/presentation/screens/media_hub_screen.dart';
import '../../features/social_sandbox/presentation/screens/social_sandbox_screen.dart';
import '../../features/data_tools/presentation/screens/data_tools_screen.dart';
import '../../features/developer_suite/presentation/screens/developer_suite_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: '/media-hub',
        builder: (context, state) => const MediaHubScreen(),
      ),
      GoRoute(
        path: '/social-sandbox',
        builder: (context, state) => const SocialSandboxScreen(),
      ),
      GoRoute(
        path: '/data-tools',
        builder: (context, state) => const DataToolsScreen(),
      ),
      GoRoute(
        path: '/developer-suite',
        builder: (context, state) => const DeveloperSuiteScreen(),
      ),
    ],
  );
}
