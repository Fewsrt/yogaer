import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditationWidget extends StatefulWidget {
  const MeditationWidget({Key key}) : super(key: key);

  @override
  _MeditationWidgetState createState() => _MeditationWidgetState();
}

class _MeditationWidgetState extends State<MeditationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.secondaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.darkBG,
            size: 32,
          ),
        ),
        title: Text(
          'MEDITATION',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Lexend Deca',
            color: FlutterFlowTheme.darkBG,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/istockphoto-1324181858-170667a.jpeg',
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: AutoSizeText(
                        'Details',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.darkBG,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 10, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                    size: 24,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: AutoSizeText(
                        '15 days',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.darkBG,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: AutoSizeText(
                        'This course is a guide on how to play.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.darkBG,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 80, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/albfo_3.png',
                              width: 80,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: Text(
                                          'Warrior Pose',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Ekkamai',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/34rbv_6.png',
                              width: 80,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: Text(
                                          'Triangle Pose',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Ekkamai',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/4y87x_8.png',
                              width: 80,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: Text(
                                          'Cobra Pose',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Ekkamai',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
              child: FFButtonWidget(
                onPressed: () {
                  print('ButtonPrimary pressed ...');
                },
                text: 'Start',
                options: FFButtonOptions(
                  width: 250,
                  height: 50,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.title3.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
