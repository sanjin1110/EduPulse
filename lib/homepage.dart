import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'course1_widget.dart';
import 'course4_widget.dart';
import 'homepage_model.dart';

export 'homepage_model.dart';

HomepageModel createModel(BuildContext context) {
  return HomepageModel();
}

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context);

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isiOS = Theme.of(context).platform == TargetPlatform.iOS;

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          title: const Text('EduPulse',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Outfit',
                color: Colors.white,
                fontSize: 20,
              )),
          actions: const [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 398,
                    height: 84,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 0, 0),
                            child: Text('Welcome Joe',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 20,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 0, 0),
                            child: Text('Let’s start learning',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 22,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 388,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 0, 20, 0),
                            child: Icon(
                              Icons.search_outlined,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 24,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8, 0, 8, 0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                hintText: 'Search',
                                hintStyle:
                                    Theme.of(context).textTheme.titleMedium,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 395,
                height: 57,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text('Featured Courses',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontWeight: FontWeight.bold,
                            fontSize:
                                Theme.of(context).textTheme.bodyLarge!.fontSize,
                            // You may also set other properties here such as color
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('FeaturedCources');
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 399,
                height: 243,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('CourseDetail');
                        },
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('CourseDetail');
                        },
                        child: wrapWithModel(
                          model: _model.course4Model,
                          updateCallback: () => setState(() {}),
                          child: const Course4Widget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 395,
                height: 28,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Text(
                    'Popular Category',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Container(
                width: 402,
                height: 264,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('CourseDetail');
                  },
                  child: wrapWithModel(
                    model: _model.course1Model,
                    updateCallback: () => setState(() {}),
                    child: const Course1Widget(),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 77,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Icon(
                      Icons.home_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 77,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('SavedCourses');
                      },
                      child: Icon(
                        Icons.bookmark_border,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 77,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('mycourses');
                      },
                      child: Icon(
                        Icons.menu_book_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 77,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Profile');
                      },
                      child: Icon(
                        Icons.person,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
