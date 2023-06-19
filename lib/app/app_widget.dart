import 'package:flutter/material.dart';
import 'package:titan_crypto/app/app_module.dart';
import 'package:titan_crypto/app/core/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appModule,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1B232A),
        extensions: [
          AppColors(
            black: const Color(0xFF1B232A),
            green: const Color(0xFF5ED5A8),
            red: const Color(0xFFDD4B4B),
            grey: const Color(0xFFF1F4F6),
            white: Colors.white,
            transparent: Colors.transparent,
            disableBackground: const Color(0xFF3E474F).withOpacity(.1),
            textButtonColor: const Color(0xFF3E474F),
          )
        ],
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B232A),
        ),
        colorSchemeSeed: const Color(0xFF1B232A),
      ),
    );
  }
}
