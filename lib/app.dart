import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:wedding_halls/features/main_features/presentation/screens/splash/splash.dart';
import 'config/themes/app_theme.dart';
import 'features/main_features/domain/providers/userProvider.dart';
import 'features/caleder/presentaion/screens/caleder.dart';
import 'features/main_features/presentation/screens/home_viwer/home_viwer.dart';
import 'features/authantcaion/presentaion/loging/login.dart';
import 'features/main_features/presentation/screens/profile/profileScrean.dart';
import 'features/posts_opertions/presention/screens/view_post_screens/feed_post.dart';
import 'utils/app_strings.dart';
import 'utils/media_query_values.dart';

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
      child: ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            localizationsDelegates: const [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            debugShowCheckedModeBanner: false,
            // supportedLocales: const [Locale('ar'), Locale('en')],
            theme: AppTheme.appThemeDate[AppThemes.lightTheme],
            routes: {
              AppRoutes.loginScreen: (context) => const LoginScreen(),
              'FeedPost': (context) => const FeedPost(),
              AppRoutes.addPostScreen: (context) => const MyCaleder(),
              AppRoutes.homeScreen: (context) => const HomeViwer(),
              AppRoutes.calenderScreen: (context) => const MyCaleder(),
              AppRoutes.profileScreen: (context) => const ProfileScreen(),
            },
            home: Builder(builder: (context) {
              // this to init Mediaqourery sizes
              // i uesd builder to give me context to but my init fun
              // under materialApp becouse it's the provoder of ,Medaiqourey
              AppSizes().init(context);
              return const SplashScreen();
            }),
          );
        },
      ),
    );
  }
}
