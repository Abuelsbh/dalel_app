import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/widget/custom_button.dart';
import 'package:dalel_app/feature/auth/presentation/views/widgets/CustomTextFeild.dart';
import 'package:dalel_app/feature/auth/presentation/views/widgets/WelcomeTextWidget.dart';
import 'package:dalel_app/feature/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:dalel_app/feature/auth/presentation/views/widgets/terms_and_condition_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 152 )),
              SliverToBoxAdapter(child: WelcomeTextWidget(text: AppStrings.welcome,),),
              SliverToBoxAdapter(child: SizedBox(height: 16 )),
              SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.fristName,),),
              SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.lastName,),),
              SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.emailAddress,),),
              SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.password,),),
              SliverToBoxAdapter(child: TermsAndConidtionWidget(),),
              SliverToBoxAdapter(child: SizedBox(height: 88 )),
              SliverToBoxAdapter(child: CustomBtn(text: AppStrings.signUp,onPressed: (){},),),
              SliverToBoxAdapter(child: SizedBox(height: 16 )),
              SliverToBoxAdapter(child: HaveAnAccountWidget(text1: AppStrings.alreadyHaveAnAccount,text2: AppStrings.signIn ,),)
            ],
          ),
        ),
      ),
    );
  }
}









