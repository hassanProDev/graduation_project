import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  var signUpKey = GlobalKey<FormState>();
  TextEditingController userCode = TextEditingController();
  TextEditingController userNationalId = TextEditingController();
  TextEditingController userPaassword = TextEditingController();
  TextEditingController userRePaassword = TextEditingController();
  String? selectedUserType;
  void getUserType(String? selectedUserType){
    this.selectedUserType=selectedUserType;
    emit(SignupUserType());
  }

  bool isPassword=true;
  IconData iconPasswordVisiblty=Icons.visibility_off;
  void passwordVisibilty(){
    isPassword?isPassword=false:isPassword=true;
    isPassword?iconPasswordVisiblty=Icons.visibility_off:iconPasswordVisiblty=Icons.visibility;
    emit(SignuPasswordVisibilty());
  }

}
