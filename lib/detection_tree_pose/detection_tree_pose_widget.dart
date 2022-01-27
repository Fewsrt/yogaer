import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DetectionTreePoseWidget extends StatefulWidget {
  const DetectionTreePoseWidget({Key key}) : super(key: key);

  @override
  _DetectionTreePoseWidgetState createState() =>
      _DetectionTreePoseWidgetState();
}

class _DetectionTreePoseWidgetState extends State<DetectionTreePoseWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
