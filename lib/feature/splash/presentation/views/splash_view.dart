import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            AppStrings.appName,
            style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.w400,
                color: AppColors.deebBrown,
                fontFamily: "Pacifico"
            )
        ),
      ),
    );
  }
}


void delayedNavigate(context) {
  Future.delayed(
      Duration(seconds: 2),
          () {
        customNavigation(context, "/onBoarding");
      }
  );
}