import 'package:flutter/material.dart';

import 'course2_model.dart';

export 'course2_model.dart';

Course2Model createModel(BuildContext context) {
  return Course2Model();
}

class Course2Widget extends StatefulWidget {
  const Course2Widget({super.key});

  @override
  State<Course2Widget> createState() => _Course2WidgetState();
}

class _Course2WidgetState extends State<Course2Widget> {
  late Course2Model _model;

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
                  'https://images.unsplash.com/photo-1510127034890-ba27508e9f1c?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxjYW1lcmF8ZW58MHx8fHwxNzA3MjA1MTM0fDA&ixlib=rb-4.0.3&q=85',
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
                    Text('Photography Course',
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
                    child: Text('1h 50min •8 lesson',
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
