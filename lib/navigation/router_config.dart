import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:spoonary_client_care_service/screen/start_app_screen.dart';

import '../screen/error_screen.dart';

    var router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const StartAppScreen();
          },
        ),
      ],
      errorBuilder: (context, state) => const ErrorScreen(),
    );