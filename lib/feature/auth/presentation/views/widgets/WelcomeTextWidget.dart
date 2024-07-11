import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
        child: Text(
          text,
          style: CustomTextStyles.pacifico600style28,
        )
    );
  }
}
