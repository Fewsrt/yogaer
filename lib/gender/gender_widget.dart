import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../often/often_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({Key key}) : super(key: key);

  @override
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 200, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                  child: Text(
                    'What Is Your Gender ?',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.darkBG,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 70, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(48, 0, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final dataUserCreateData = createDataUserRecordData(
                        gender: 'male',
                        user: currentUserReference,
                      );
                      await DataUserRecord.collection
                          .doc()
                          .set(dataUserCreateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OftenWidget(),
                        ),
                      );
                    },
                    text: 'Male',
                    options: FFButtonOptions(
                      width: 250,
                      height: 50,
                      color: FlutterFlowTheme.primaryColor,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Overpass',
                        color: Colors.white,
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(48, 0, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final dataUserCreateData = createDataUserRecordData(
                        user: currentUserReference,
                        gender: 'female',
                      );
                      await DataUserRecord.collection
                          .doc()
                          .set(dataUserCreateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OftenWidget(),
                        ),
                      );
                    },
                    text: 'Female',
                    options: FFButtonOptions(
                      width: 250,
                      height: 50,
                      color: FlutterFlowTheme.primaryColor,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Overpass',
                        color: Colors.white,
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(48, 0, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final dataUserCreateData = createDataUserRecordData(
                        user: currentUserReference,
                        gender: 'non',
                      );
                      await DataUserRecord.collection
                          .doc()
                          .set(dataUserCreateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OftenWidget(),
                        ),
                      );
                    },
                    text: 'Non-binary',
                    options: FFButtonOptions(
                      width: 250,
                      height: 50,
                      color: FlutterFlowTheme.primaryColor,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Overpass',
                        color: Colors.white,
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 250, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(140, 0, 0, 0),
                  child: Text(
                    'Step 1 of 3',
                    style: FlutterFlowTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
