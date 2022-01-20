import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'assets/images/download_(1).jpeg',
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.transparent,
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 2, 2, 2),
                                    child: AuthUserStreamWidget(
                                      child: Container(
                                        width: 75,
                                        height: 75,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          currentUserPhoto,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Welcome,',
                                        style: FlutterFlowTheme.title3.override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF1E2429),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                        child: AuthUserStreamWidget(
                                          child: Text(
                                            currentUserDisplayName,
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF00968A),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      'Your latest updates are below.',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'My Course',
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                      child: Container(
                        width: 250,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Color(0xFFEBF5FB),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/mcatd_1.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x64000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 0, 0),
                                  child: Text(
                                    'Beginner Tour',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Thsarabun',
                                      color: FlutterFlowTheme.darkBG,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        35, 0, 0, 0),
                                    child: Text(
                                      '7 Days',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Thsarabun',
                                        color: FlutterFlowTheme.darkBG,
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Continue',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                      child: Container(
                        width: 250,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Color(0xFFEBF5FB),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/ml88i_4.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x64000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 0, 0),
                                  child: Text(
                                    'Warrior Pose',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Thsarabun',
                                      color: FlutterFlowTheme.darkBG,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        35, 0, 0, 0),
                                    child: Text(
                                      '1 min',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Thsarabun',
                                        color: FlutterFlowTheme.darkBG,
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Continue',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Recommend',
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                      child: Container(
                        width: 250,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Color(0xFFEBF5FB),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/mcatd_1.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x64000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 0, 0),
                                  child: Text(
                                    'Beginner Tour',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Thsarabun',
                                      color: FlutterFlowTheme.darkBG,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        35, 0, 0, 0),
                                    child: Text(
                                      '7 Days',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Thsarabun',
                                        color: FlutterFlowTheme.darkBG,
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Choose',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                      child: Container(
                        width: 250,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Color(0xFFEBF5FB),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/albfo_3.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x64000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 0, 0),
                                  child: Text(
                                    'Health Care',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Thsarabun',
                                      color: FlutterFlowTheme.darkBG,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        35, 0, 0, 0),
                                    child: Text(
                                      '30 Days',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Thsarabun',
                                        color: FlutterFlowTheme.darkBG,
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Choose',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                      child: Container(
                        width: 250,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Color(0xFFEBF5FB),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/9hsjc_2.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x64000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 0, 0),
                                  child: Text(
                                    'Meditation',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Thsarabun',
                                      color: FlutterFlowTheme.darkBG,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        35, 0, 0, 0),
                                    child: Text(
                                      '15 Days',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Thsarabun',
                                        color: FlutterFlowTheme.darkBG,
                                        fontSize: 22,
                                        useGoogleFonts: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Choose',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
