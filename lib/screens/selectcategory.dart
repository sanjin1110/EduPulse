import 'package:education_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'selectcategory_model.dart';

export 'selectcategory_model.dart';

SelectcategoryModel createModel(BuildContext context) {
  return SelectcategoryModel();
}

class SelectcategoryWidget extends StatefulWidget {
  const SelectcategoryWidget({Key? key}) : super(key: key);

  @override
  State<SelectcategoryWidget> createState() => _SelectcategoryWidgetState();
}

class _SelectcategoryWidgetState extends State<SelectcategoryWidget> {
  late SelectcategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context);
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(1, -1),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8, 10, 0, 0),
                  child: Text(
                    'Select your interests...',
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.titleLarge!.fontWeight,
                      fontStyle:
                          Theme.of(context).textTheme.titleLarge!.fontStyle,
                      letterSpacing:
                          Theme.of(context).textTheme.titleLarge!.letterSpacing,
                      color: Theme.of(context).textTheme.titleLarge!.color,
                      fontFamily:
                          Theme.of(context).textTheme.titleLarge!.fontFamily,
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-1, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                  child: Text(
                    'Choose atleast 2 interests for better recommendations',
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      fontSize: 12,
                      // Other properties like color, fontWeight, etc. can be added if needed
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 0, 20, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                child: Icon(
                                  Icons.design_services,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                            ),
                            Text(
                              'Design',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontWeight,
                                fontStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontStyle,
                                letterSpacing: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .letterSpacing,
                                color: Colors.black,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Icon(
                                Icons.business_center,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Text('Business',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontWeight,
                                  fontStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontStyle,
                                  letterSpacing: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .letterSpacing,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Icon(
                                Icons.engineering_sharp,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Text('Engineer',
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontWeight,
                                  fontStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontStyle,
                                  letterSpacing: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .letterSpacing,
                                  color: Colors.black,
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontFamily,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 0, 20, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 12),
                                child: Icon(
                                  Icons.design_services,
                                  color: Theme.of(context).secondaryHeaderColor,
                                  size: 24,
                                ),
                              ),
                            ),
                            Text(
                              'Design',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontWeight,
                                fontStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontStyle,
                                letterSpacing: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .letterSpacing,
                                color: Colors.white,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Icon(
                                Icons.business_center,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Text('Business',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontWeight,
                                  fontStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontStyle,
                                  letterSpacing: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .letterSpacing,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Icon(
                                Icons.engineering_sharp,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Text('Engineer',
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontWeight,
                                  fontStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontStyle,
                                  letterSpacing: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .letterSpacing,
                                  color: Colors.black,
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontFamily,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 0, 20, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                child: Icon(
                                  Icons.design_services,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                            ),
                            Text(
                              'Design',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontWeight,
                                fontStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontStyle,
                                letterSpacing: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .letterSpacing,
                                color: Colors.black,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Icon(
                                Icons.business_center,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Text('Business',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontWeight,
                                  fontStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontStyle,
                                  letterSpacing: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .letterSpacing,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Icon(
                                Icons.engineering_sharp,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Text('Engineer',
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontWeight,
                                  fontStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontStyle,
                                  letterSpacing: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .letterSpacing,
                                  color: Colors.black,
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontFamily,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 0, 20, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 12),
                                child: Icon(
                                  Icons.design_services,
                                  color: Theme.of(context).secondaryHeaderColor,
                                  size: 24,
                                ),
                              ),
                            ),
                            Text(
                              'Design',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontWeight,
                                fontStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontStyle,
                                letterSpacing: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .letterSpacing,
                                color: Colors.white,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Icon(
                                Icons.business_center,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Text('Business',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontWeight,
                                  fontStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontStyle,
                                  letterSpacing: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .letterSpacing,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                        width: 94,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Icon(
                                Icons.engineering_sharp,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            Text('Engineer',
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontWeight,
                                  fontStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontStyle,
                                  letterSpacing: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .letterSpacing,
                                  color: Colors.black,
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontFamily,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 94, 16, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const BaseScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 44,
                    alignment: Alignment.center,
                    child: const Text(
                      'Finish',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
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
