import 'package:flutter/material.dart';

class LoginModel  {
  final unfocusNode = FocusNode();
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  bool passwordVisibility = false;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailController?.dispose();
    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }

  // Action blocks and helper methods would go here.
}
