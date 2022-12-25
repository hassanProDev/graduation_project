import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/business_logic/cubit/registration/login/login_cubit.dart';
import 'package:graduation_project/presentation/constants.dart';
import 'package:graduation_project/presentation/widgets/registration/customButton.dart';
import 'package:graduation_project/presentation/widgets/registration/custom_textformfield.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/core/custom_drop_down_button.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            LoginCubit myCubit = BlocProvider.of(context);
            return Scaffold(
              body: Container(
                padding: EdgeInsets.only(top: 8.h),
                child: Form(
                  key: myCubit.loginKey,
                  child: ListView(
                    children: [
                      CustomTextFormField(
                        controller: myCubit.userCode,
                        text: "code",
                      ),
                      CustomTextFormField(
                        controller:myCubit.userNationalId,
                        text: "National Id",
                      ),
                      CustomTextFormField(
                        controller: myCubit.userPaassword,
                        isPassword: myCubit.isPassword,
                        iconData: myCubit.iconPasswordVisiblty,
                        text: "Password",
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
                        listDropDown: [admin,instructor, student],
                        hintValidat: "please enter your account type",
                      ),
                      CustomButton(
                        text: " Login",
                        onClick: () {
                          if(myCubit.loginKey.currentState!.validate()){
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
