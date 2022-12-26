import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/business_logic/cubit/registration/signup/signup_cubit.dart';
import 'package:graduation_project/data/constants.dart';
import 'package:graduation_project/presentation/widgets/core/customButton.dart';
import 'package:graduation_project/presentation/widgets/core/custom_drop_down_button.dart';
import 'package:graduation_project/presentation/widgets/core/custom_textformfield.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => SignupCubit(),
        child: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            SignupCubit myCubit = BlocProvider.of(context);
            return Scaffold(
              body: Container(
                padding: EdgeInsets.only(top: 8.h),
                child: Form(
                  key: myCubit.signUpKey,
                  child: ListView(
                    children: [
                      CustomTextFormField(
                        controller: myCubit.userCode,
                        text: "code",
                      ),
                      CustomTextFormField(
                        controller:myCubit. userNationalId,
                        text: "National Id",
                      ),
                      CustomTextFormField(
                        controller: myCubit.userPaassword,
                        text: "Password",
                        isPassword: myCubit.isPassword,
                        iconData: myCubit.iconPasswordVisiblty,
                        onClick: () {
                          myCubit.passwordVisibilty();
                        },
                      ),
                      CustomTextFormField(
                        controller: myCubit.userRePaassword,
                        text: "Re-Password",
                        isPassword: myCubit.isPassword,
                        iconData: myCubit.iconPasswordVisiblty,
                        onClick: () {
                          myCubit.passwordVisibilty();
                        },
                      ),
                      CustomDropDownButton(
                        hint: "You are a/an",
                        value: myCubit.selectedUserType,
                        onChanged: (value) {
                          myCubit.getUserType(value);
                        },
                        listDropDown: [instructor, student],
                        hintValidat: "please enter your account type",
                      ),
                      CustomButton(
                        text: " sign up",
                        onClick: () {
                          if (myCubit.signUpKey.currentState!.validate()) {
                            Navigator.pushReplacementNamed(
                                context, layoutScreen,
                                arguments: myCubit.selectedUserType);
                          }
                        },
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "If you Have Problem Contact With Us",
                          style: Theme.of(context).textTheme.button,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
