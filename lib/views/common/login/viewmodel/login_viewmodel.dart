import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool _isPasswordVisible = false.obs;

  bool get isPasswordVisible => _isPasswordVisible.value;

  void changePasswordVisiblity() {
    _isPasswordVisible.value = !_isPasswordVisible.value;
  }

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
