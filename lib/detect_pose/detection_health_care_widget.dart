import 'package:yogaer/flutter_flow/flutter_flow_theme.dart';
import 'package:yogaer/services/render_data_arm_press.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';

import 'package:yogaer/services/camera.dart';

class DetectionHealthCareWidget extends StatefulWidget {
  final List<CameraDescription> cameras;
  final String title;
  const DetectionHealthCareWidget({this.cameras, this.title});

  @override
  _DetectionHealthCareWidgetState createState() =>
      _DetectionHealthCareWidgetState();
}

class _DetectionHealthCareWidgetState extends State<DetectionHealthCareWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<dynamic> _data;
  int _imageHeight = 0;
  int _imageWidth = 0;
  int x = 1;

  @override
  void initState() {
    super.initState();
    var res = loadModel();
    print('Model Response: ' + res.toString());
  }

  _setRecognitions(data, imageHeight, imageWidth) {
    if (!mounted) {
      return;
    }
    setState(() {
      _data = data;
      _imageHeight = imageHeight;
      _imageWidth = imageWidth;
    });
  }

  loadModel() async {
    return await Tflite.loadModel(
        model: "assets/models/posenet_mv1_075_float_from_checkpoints.tflite");
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Health Care Course'),
        backgroundColor: FlutterFlowTheme.primaryColor,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          CameraApp(
            cameras: widget.cameras,
            setRecognitions: _setRecognitions,
          ),
          RenderDataArmPress(
            data: _data == null ? [] : _data,
            previewH: max(_imageHeight, _imageWidth),
            previewW: min(_imageHeight, _imageWidth),
            screenH: screen.height,
            screenW: screen.width,
          ),
        ],
      ),
    );
  }
}
