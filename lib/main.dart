import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/routes_manager.dart';
import 'package:news_app/providers/home_provider.dart';
import 'package:provider/provider.dart';

import 'config/theme/theme_manager.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => HomeProvider(),
      child: const NewsApp()));
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesManager.splash,
        routes: RoutesManager.router,
        theme: ThemeManager.light,
        darkTheme: ThemeManager.dark,
        themeMode: ThemeMode.dark,
        locale: Locale("en"),
        supportedLocales: [Locale("en"), Locale("ar")],
      ),
    );
  }
}
