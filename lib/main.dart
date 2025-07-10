import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation/router_config.dart';

void main() {
  runApp(ProviderScope(child: MaterialApp.router(
    routerConfig: router,
    theme: ThemeData(
      fontFamily: 'Pretendard'
    ),
    debugShowCheckedModeBanner: false
  )));
}