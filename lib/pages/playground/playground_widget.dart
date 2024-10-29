import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'playground_model.dart';
export 'playground_model.dart';

class PlaygroundWidget extends StatefulWidget {
  const PlaygroundWidget({super.key});

  @override
  State<PlaygroundWidget> createState() => _PlaygroundWidgetState();
}

class _PlaygroundWidgetState extends State<PlaygroundWidget> {
  late PlaygroundModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaygroundModel());

    _model.txtFldPromptTextController ??= TextEditingController();
    _model.txtFldPromptFocusNode ??= FocusNode();

    _model.txtFldSysInsTextController ??= TextEditingController();
    _model.txtFldSysInsFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/flutterflow_logo.jpeg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.none,
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('btnLogOut pressed ...');
                      },
                      text: 'Log Out',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'AI Playground',
                        style:
                            FlutterFlowTheme.of(context).displayMedium.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Prompt',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Inter Tight',
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              safeSetState(() {
                                _model.txtFldPromptTextController?.clear();
                                _model.txtFldSysInsTextController?.clear();
                              });
                              safeSetState(() {
                                _model.isDataUploading = false;
                                _model.uploadedLocalFiles = [];
                              });

                              _model.pageStateVarAPIResult =
                                  '**The Model** will generate a response after you click **Submit**';
                              safeSetState(() {});
                            },
                            text: 'Clear Prompt',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 13.0, 8.0, 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.txtFldPromptTextController,
                          focusNode: _model.txtFldPromptFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText:
                                'Write your prompt here, insert media and then click Submit',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.txtFldPromptTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final selectedFiles = await selectFiles(
                              allowedExtensions: ['pdf'],
                              multiFile: true,
                            );
                            if (selectedFiles != null) {
                              safeSetState(() => _model.isDataUploading = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              try {
                                showUploadMessage(
                                  context,
                                  'Uploading file...',
                                  showLoading: true,
                                );
                                selectedUploadedFiles = selectedFiles
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                        ))
                                    .toList();
                              } finally {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                _model.isDataUploading = false;
                              }
                              if (selectedUploadedFiles.length ==
                                  selectedFiles.length) {
                                safeSetState(() {
                                  _model.uploadedLocalFiles =
                                      selectedUploadedFiles;
                                });
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                safeSetState(() {});
                                showUploadMessage(
                                  context,
                                  'Failed to upload file',
                                );
                                return;
                              }
                            }
                          },
                          text: 'Insert Media',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var shouldSetState = false;
                            _model.apiResult38l =
                                await GeminiRunPlaygroundCall.call(
                              prompt: _model.txtFldPromptTextController.text,
                              systemInstructions:
                                  _model.txtFldSysInsTextController.text,
                              region: _model.ddnRegionValue,
                              model: _model.ddnModelValue,
                              temperature: _model.sldrTempValue,
                              maxOutputTokens:
                                  (_model.sldrOutputToeknLimitValue!).round(),
                              archivoList: _model.uploadedLocalFiles,
                            );

                            shouldSetState = true;
                            if ((_model.apiResult38l?.succeeded ?? true)) {
                              _model.pageStateVarAPIResult =
                                  valueOrDefault<String>(
                                GeminiRunPlaygroundCall.jsonResponse(
                                  (_model.apiResult38l?.jsonBody ?? ''),
                                ),
                                'O-O',
                              );
                              safeSetState(() {});
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Salió bien :-)',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              if (shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              _model.pageStateVarAPIResult =
                                  (_model.apiResult38l?.bodyText ?? '');
                              safeSetState(() {});
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Malió sal :-(',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              if (shouldSetState) safeSetState(() {});
                              return;
                            }

                            if (shouldSetState) safeSetState(() {});
                          },
                          text: 'Submit',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                        child: Text(
                          'Response',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter Tight',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MarkdownBody(
                        data: _model.pageStateVarAPIResult,
                        selectable: true,
                        onTapLink: (_, url, __) => launchURL(url!),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 250.0,
                height: double.infinity,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(13.0, 7.0, 13.0, 13.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                        child: Text(
                          'Settings',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 29.0, 0.0, 0.0),
                        child: Text(
                          'Model',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.ddnModelValueController ??=
                              FormFieldController<String>(null),
                          options: const [
                            'gemini-1.5-pro-001',
                            'gemini-1.5-flash-001',
                            'gemini-1.5-pro-002',
                            'gemini-1.5-flash-002'
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.ddnModelValue = val),
                          width: 200.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Please select a model',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 29.0, 0.0, 0.0),
                        child: Text(
                          'Region',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.ddnRegionValueController ??=
                              FormFieldController<String>(null),
                          options: const [
                            'us-central1',
                            'us-east1',
                            'southamerica-east1'
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.ddnRegionValue = val),
                          width: 200.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Please select a region',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 29.0, 0.0, 0.0),
                        child: Text(
                          'Temperature',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Slider(
                          activeColor: FlutterFlowTheme.of(context).primary,
                          inactiveColor: FlutterFlowTheme.of(context).alternate,
                          min: 0.0,
                          max: 2.0,
                          value: _model.sldrTempValue ??= 1.0,
                          label: _model.sldrTempValue?.toStringAsFixed(2),
                          divisions: 20,
                          onChanged: (newValue) {
                            newValue =
                                double.parse(newValue.toStringAsFixed(2));
                            safeSetState(() => _model.sldrTempValue = newValue);
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                        child: Text(
                          'Output Token Limit',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Slider(
                          activeColor: FlutterFlowTheme.of(context).primary,
                          inactiveColor: FlutterFlowTheme.of(context).alternate,
                          min: 1.0,
                          max: 8192.0,
                          value: _model.sldrOutputToeknLimitValue ??= 2048.0,
                          label: _model.sldrOutputToeknLimitValue
                              ?.toStringAsFixed(2),
                          divisions: 8191,
                          onChanged: (newValue) {
                            newValue =
                                double.parse(newValue.toStringAsFixed(2));
                            safeSetState(() =>
                                _model.sldrOutputToeknLimitValue = newValue);
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                        child: Text(
                          'System Instructions',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 13.0, 8.0, 0.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.txtFldSysInsTextController,
                            focusNode: _model.txtFldSysInsFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              hintText:
                                  'For example, You are a helpful customer service agent',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 7,
                            minLines: 3,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .txtFldSysInsTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                        child: Text(
                          'Safety Settings',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<int>(
                          controller: _model.ddnSafetyValueController ??=
                              FormFieldController<int>(
                            _model.ddnSafetyValue ??= 0,
                          ),
                          options: List<int>.from([1, 2, 3, 0]),
                          optionLabels: const [
                            'Block few',
                            'Block some',
                            'Block most',
                            'Off'
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.ddnSafetyValue = val),
                          width: 200.0,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Please select...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
