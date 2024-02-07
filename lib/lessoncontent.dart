import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/video/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'lessoncontent_model.dart';
export 'lessoncontent_model.dart';

class LessoncontentWidget extends StatefulWidget {
  const LessoncontentWidget({super.key});

  @override
  State<LessoncontentWidget> createState() => _LessoncontentWidgetState();
}

class _LessoncontentWidgetState extends State<LessoncontentWidget> {
  late LessoncontentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LessoncontentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
          automaticallyImplyLeading: true,
          title: Text(
            'Introduction',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.videoModel,
                  updateCallback: () => setState(() {}),
                  child: VideoWidget(),
                ),
                Padding(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    'The software design process is a critical phase in the development of software applications. It involves transforming user requirements into a detailed and structured blueprint that serves as a guide for the implementation phase. Effective software design is essential for creating robust, scalable, and maintainable software systems. The process typically consists of several stages, each focusing on different aspects of the software solution. Here\'s an introduction to the software design process:\nRequirements Analysis:\nIdentify and gather user requirements through communication with stakeholders.\nUnderstand the problem domain and the goals of the software system.\nDefine functional and non-functional requirements that the software must meet.\nSpecification:\nDocument a detailed specification that captures the requirements in a clear and unambiguous manner.\nSpecify the input, processing, and output for each module or component of the system.\nEstablish constraints and dependencies that may affect the design.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('CourseDetail');
                    },
                    text: 'Finish',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 44,
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
