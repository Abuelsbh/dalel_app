import 'dart:ui';

import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles{
  static final pacifico400style64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deebBrown,
    fontFamily: "Pacifico"
  );

  static final poppins500style24 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: "Poppins"
  );

  static final poppins300style16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      fontFamily: "Poppins"
  );
}