import 'package:go_router/go_router.dart';
import 'screens/intro_screen.dart';
import 'screens/add_devices_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const IntroScreen(),
    ),
    GoRoute(
      path: '/add-devices',
      builder: (context, state) => const AddDevicesScreen(),
    ),
  ],
);

