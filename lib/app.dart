import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/fetures/authentication/screens/onboarding/onbording.dart';

import 'utils/theme/theme.dart' show tAppTheme;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: tAppTheme.lightTheme,
      darkTheme: tAppTheme.darkTheme,
      home: const Onbording(),

    );
  }
}
