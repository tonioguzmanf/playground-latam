import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'playground_widget.dart' show PlaygroundWidget;
import 'package:flutter/material.dart';

class PlaygroundModel extends FlutterFlowModel<PlaygroundWidget> {
  ///  Local state fields for this page.

  String pageStateVarAPIResult =
      '**The Model** will generate a response after you click **Submit**';

  ///  State fields for stateful widgets in this page.

  // State field(s) for txtFldPrompt widget.
  FocusNode? txtFldPromptFocusNode;
  TextEditingController? txtFldPromptTextController;
  String? Function(BuildContext, String?)? txtFldPromptTextControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  // Stores action output result for [Backend Call - API (GeminiRunPlayground)] action in btnSubmit widget.
  ApiCallResponse? apiResult38l;
  // State field(s) for ddnModel widget.
  String? ddnModelValue;
  FormFieldController<String>? ddnModelValueController;
  // State field(s) for ddnRegion widget.
  String? ddnRegionValue;
  FormFieldController<String>? ddnRegionValueController;
  // State field(s) for sldrTemp widget.
  double? sldrTempValue;
  // State field(s) for sldrOutputToeknLimit widget.
  double? sldrOutputToeknLimitValue;
  // State field(s) for txtFldSysIns widget.
  FocusNode? txtFldSysInsFocusNode;
  TextEditingController? txtFldSysInsTextController;
  String? Function(BuildContext, String?)? txtFldSysInsTextControllerValidator;
  // State field(s) for ddnSafety widget.
  int? ddnSafetyValue;
  FormFieldController<int>? ddnSafetyValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtFldPromptFocusNode?.dispose();
    txtFldPromptTextController?.dispose();

    txtFldSysInsFocusNode?.dispose();
    txtFldSysInsTextController?.dispose();
  }
}
