import 'package:flutter/material.dart';

import 'course1_model.dart';

export 'course1_model.dart';

Course1Model createModel(BuildContext context) {
  return Course1Model();
}

class Course1Widget extends StatefulWidget {
  const Course1Widget({super.key});

  @override
  State<Course1Widget> createState() => _Course1WidgetState();
}

class _Course1WidgetState extends State<Course1Widget> {
  late Course1Model _model;

  @override
  void initState() {
    super.initState();
    _model = createModel(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
      child: Container(
        width: 359,
        height: 226,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7,
              color: Color(0x2F1D2429),
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://images.unsplash.com/photo-1621839673705-6617adf9e890?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8d2ViJTIwZGVzaWdufGVufDB8fHx8MTcwNzIwNTA2MXww&ixlib=rb-4.0.3&q=80&w=1080',
                  width: double.infinity,
                  height: 136,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Web Design Course',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                          // Add other properties as needed
                        )),
                  ],
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text('4h 20min • 24 lesson',
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
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
