import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/feature/auth/presentation/views/widgets/custom_check_box_widget.dart';
import 'package:flutter/cupertino.dart';

class TermsAndConidtionWidget extends StatelessWidget {
  const TermsAndConidtionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        Text.rich(
          TextSpan(children: [
            TextSpan(text: AppStrings.iHaveAgreeToOur,style: CustomTextStyles.pacifico400style12),
            TextSpan(text: AppStrings.termsAndCondition,style: CustomTextStyles.pacifico400style12.copyWith(decoration: TextDecoration.underline)),
          ]
          )
        )
      ],
    );
  }
}
