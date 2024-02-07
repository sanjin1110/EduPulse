
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'course4_model.dart';
export 'course4_model.dart';

Course4Model createModel(BuildContext context) {
  return Course4Model();
}
class Course4Widget extends StatefulWidget {
  const Course4Widget({super.key});

  @override
  State<Course4Widget> createState() => _Course4WidgetState();
}

class _Course4WidgetState extends State<Course4Widget> {
  late Course4Model _model;



  @override
  void initState() {
    super.initState();
    _model = createModel(context);
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
      child: Container(
        width: 359,
        height: 226,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: Color(0x2F1D2429),
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://images.unsplash.com/photo-1571171637578-41bc2dd41cd2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxzb2Z0d2FyZXxlbnwwfHx8fDE3MDcyMDUxOTV8MA&ixlib=rb-4.0.3&q=80&w=1080',
                  width: double.infinity,
                  height: 136,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Software Design',
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      '1h 20min • 4 lesson',
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
