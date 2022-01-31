import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:yogaer/yoga_success/yoga_success_widget.dart';

class BndBox extends StatefulWidget {
  final List<dynamic> results;
  final int previewH;
  final int previewW;
  final double screenH;
  final double screenW;
  final String customModel;

  const BndBox({
    this.results,
    this.previewH,
    this.previewW,
    this.screenH,
    this.screenW,
    this.customModel,
  });

  @override
  _BndBoxState createState() => _BndBoxState();
}

class _BndBoxState extends State<BndBox> {
  List<dynamic> _inputArr = [];
  String _label = 'Wrong Pose';
  double _percent = 0;
  double _counter = 0;
  Timer _timer;
  int _start = 12000; // 120 sec

  @override
  void initState() {
    super.initState();
    _counter = 0;
  }

  void resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _renderKeypoints() {
      var lists = <Widget>[];
      widget.results.forEach((re) {
        var list = re["keypoints"].values.map<Widget>((k) {
          var _x = k["x"];
          var _y = k["y"];
          var scaleW, scaleH, x, y;

          if (widget.screenH / widget.screenW >
              widget.previewH / widget.previewW) {
            scaleW = widget.screenH / widget.previewH * widget.previewW;
            scaleH = widget.screenH;
            var difW = (scaleW - widget.screenW) / scaleW;
            x = (_x - difW / 2) * scaleW;
            y = _y * scaleH;
          } else {
            scaleH = widget.screenW / widget.previewW * widget.previewH;
            scaleW = widget.screenW;
            var difH = (scaleH - widget.screenH) / scaleH;
            x = _x * scaleW;
            y = (_y - difH / 2) * scaleH;
          }
          // print('x: ' + x.toString());
          // print('y: ' + y.toString());

          _inputArr.add(x);
          _inputArr.add(y);

          // To solve mirror problem on front camera
          if (x > 320) {
            var temp = x - 320;
            x = 320 - temp;
          } else {
            var temp = 320 - x;
            x = 320 + temp;
          }

          return Positioned(
            left: x - 275,
            top: y - 50,
            width: 100,
            height: 15,
            child: Container(
              child: Text(
                "● ${k["part"]}",
                style: TextStyle(
                  color: Color.fromRGBO(37, 213, 253, 1.0),
                  fontSize: 12.0,
                ),
              ),
            ),
          );
        }).toList();

        // print("Input Arr: " + _inputArr.toList().toString());
        _getPrediction(_inputArr.cast<double>().toList());

        _inputArr.clear();
        // print("Input Arr after clear: " + _inputArr.toList().toString());

        lists..addAll(list);
      });
      return lists;
    }

    return Stack(children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0, 0, 32.0, 16.0),
            child: Text(
              _label.toString(),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 25.0),
            child: LinearPercentIndicator(
              animation: true,
              lineHeight: 20.0,
              animationDuration: 500,
              animateFromLastPercent: true,
              percent: _counter,
              center: Text(
                  "${(_start / 1000).toStringAsFixed(1)} second left ${(_counter * 100).toStringAsFixed(1)} %"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.green,
            ),
          ),
        ],
      ),
      Stack(
        children: _renderKeypoints(),
      ),
    ]);
  }

  Future<void> _getPrediction(List<double> poses) async {
    final interpreter =
        await Interpreter.fromAsset("models/" + widget.customModel + ".tflite");
    var output = List.filled(1, 0).reshape([1, 1]);

    interpreter.run(poses, output);

    final double result = output[0][0];
    print(output[0][0]);

    if (result <= 1) {
      _percent = 0;
      _percent = result;
    }
    _label =
        result < 0.5 ? "Wrong Pose" : (result * 100).toStringAsFixed(0) + "%";
    Future.delayed(const Duration(milliseconds: 500), () {
      updateCounter(_percent);
    });

    print("Final Label: " + result.toString());
  }

  void updateCounter(perc) {
    if (perc > 0.5) {
      startTimer();
      print("O startTimer");
    } else {
      stopTimer();
      print("X stopTimer");
    }
    print("Counter: " + _counter.toString());
  }

  void startTimer() {
    const oneMs = Duration(milliseconds: 1);

    if (_timer == null) {
      _timer = Timer.periodic(
        oneMs,
        (Timer timer) {
          if (_start == 0) {
            setState(() {
              timer.cancel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YogaSuccessWidget(),
                ),
              );
            });
          } else {
            _start--;
            _counter = 1.0 - (_start / 12000);
          }
        },
      );
    }
  }

  void stopTimer() {
    _timer?.cancel();
    _timer = null;
  }
}
