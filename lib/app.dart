import 'package:calender_picker/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:wedding_halls/utils/app_colors.dart';

import 'features/cleanArc/data/models/userProvider.dart';
import 'features/cleanArc/presentation/screens/calender/caleder.dart';
import 'features/cleanArc/presentation/screens/loging/login.dart';
import 'features/cleanArc/presentation/screens/mainhome/main_homPage.dart';
import 'features/cleanArc/presentation/screens/profile/profileScrean.dart';
import 'features/cleanArc/presentation/screens/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        debugShowCheckedModeBanner: false,
        locale: const Locale('ar'),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: darkBlue),
          useMaterial3: true,
          //app bar
          appBarTheme: AppBarTheme(backgroundColor: AppColors.blue),

          navigationBarTheme: NavigationBarThemeData(
              indicatorColor: AppColors.cyan,
              backgroundColor: AppColors.darkBlue),

          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: AppColors.cyan,
          ),

          chipTheme: ChipThemeData(backgroundColor: AppColors.cyan),
          backgroundColor: AppColors.white_1,
          scaffoldBackgroundColor: AppColors.white_1,
        ),
        routes: {
          'screen1': (context) => const AouthScrean(),
          'MAINHOME': (context) => const MAINHOME(),
          'MyCaleder': (context) => const MyCaleder(),
          'ProfileScreen': (context) => const ProfileScreen(),
        },
        home: const SplashScreen(),
      ),
    );
  }
}
