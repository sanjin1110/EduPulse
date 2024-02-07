import 'package:flutter/material.dart';

import 'course1_model.dart';
import 'course2_model.dart';
import 'course4_model.dart';

Course2Model createModel(BuildContext context) {
  return Course2Model();
}

class HomepageModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for course2 component.
  late Course2Model course2Model;
  // Model for course4 component.
  late Course4Model course4Model;
  // Model for course1 component.
  late Course1Model course1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    course2Model = createModel(context);
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    course2Model.dispose();
    course4Model.dispose();
    course1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
