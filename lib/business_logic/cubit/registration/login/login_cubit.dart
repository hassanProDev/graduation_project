import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  var loginKey = GlobalKey<FormState>();
  TextEditingController userCode=TextEditingController();
  TextEditingController userNationalId=TextEditingController();
  TextEditingController userPaassword=TextEditingController();
  String? selectedUserType;
  void getUserType(String? selectedUserType) {
    this.selectedUserType = selectedUserType;
    emit(LoginUserType());
  }


  bool isPassword=true;
  IconData iconPasswordVisiblty=Icons.visibility_off;
  void passwordVisibilty(){
    isPassword?isPassword=false:isPassword=true;
    isPassword?iconPasswordVisiblty=Icons.visibility_off:iconPasswordVisiblty=Icons.visibility;
    emit(LoginPasswordVisibilty());
  }

}
