import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../contact_us_form/contact_us_form_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../payment/payment_widget.dart';
import '../vehicle_valuation_report/vehicle_valuation_report_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController? vinTextFieldController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await GetValuationCall.call(
        vinNumber: vinTextFieldController!.text,
      );
    });

    vinTextFieldController = TextEditingController();
  }

  @override
  void dispose() {
    vinTextFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFADD8E6),
        automaticallyImplyLeading: true,
        title: Image.asset(
          'assets/images/SA_Value_-_Logo.png',
          width: 300,
          height: 70,
          fit: BoxFit.cover,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).white,
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 60, 30, 0),
              child: Image.asset(
                'assets/images/SA_Value_-_Logo.png',
                width: 300,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Balance:   R100',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 20,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageWidget(),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    'Get a value',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF303030),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentWidget(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.payment,
                ),
                title: Text(
                  'Purchase credits',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactUsFormWidget(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                ),
                title: Text(
                  'Contact us',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await signOut();
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginWidget(),
                  ),
                  (r) => false,
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: Text(
                  'Logout',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
          ],
        ),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(24, 150, 24, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
                                child: Text(
                                  'Get a value',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                ),
                              ),
                              TextFormField(
                                controller: vinTextFieldController,
                                onFieldSubmitted: (_) async {
                                  if (formKey.currentState == null ||
                                      !formKey.currentState!.validate()) {
                                    return;
                                  }
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Enter a VIN Number',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0x9AFFFFFF),
                                        letterSpacing: 2,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFADD8E6),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 2,
                                    ),
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  if (val.length < 5) {
                                    return 'Requires at least 5 characters.';
                                  }

                                  return null;
                                },
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await GetValuationCall.call(
                                      vinNumber: vinTextFieldController!.text,
                                    );
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            VehicleValuationReportWidget(
                                          vin: vinTextFieldController!.text,
                                        ),
                                      ),
                                    );
                                  },
                                  text: 'SUBMIT',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 50,
                                    color: Color(0xFF23395D),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 200, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Balance: R100',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF23395D),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 30),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Copyright 2022.  All rights reserved.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFFB2B7B7),
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
