import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Доставка Еды',
      home: HomeScreen(),
    );
  }
}