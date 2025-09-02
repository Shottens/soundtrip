import 'package:flutter/material.dart';
import 'package:soundtrip/screens/auth_screen/auth_screen.dart';
import 'package:soundtrip/theme/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Container(
          decoration: const BoxDecoration(
            gradient: AppColors.backgroundgradient
          ),
          child: child,
        );
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        
      ),
      home: const AuthScreenWidgetBody(),
    );
  }
}
