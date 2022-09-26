import '../auth/auth_util.dart';
import '../change_password/change_password_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../register/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? emailTextFieldController;
  TextEditingController? passwordTextFieldController;

  late bool passwordTextFieldVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextFieldController = TextEditingController();
    passwordTextFieldController = TextEditingController();
    passwordTextFieldVisibility = false;
  }

  @override
  void dispose() {
    emailTextFieldController?.dispose();
    passwordTextFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).white,
      body: SafeArea(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Spacer(),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 0, 80),
                                child: Image.asset(
                                  'assets/images/SA_Value_-_Logo.png',
                                  width: 300,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              TextFormField(
                                controller: emailTextFieldController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  hintText: 'Your email...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0x9AFFFFFF),
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
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF23395D),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Please fill in a valid email address...';
                                  }

                                  return null;
                                },
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: TextFormField(
                                  controller: passwordTextFieldController,
                                  obscureText: !passwordTextFieldVisibility,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter your password here...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0x9AFFFFFF),
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
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Color(0xFF23395D),
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => passwordTextFieldVisibility =
                                            !passwordTextFieldVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        passwordTextFieldVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0x80FFFFFF),
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'That password doesn\'t match.';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    150, 0, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 200),
                                        reverseDuration:
                                            Duration(milliseconds: 200),
                                        child: ChangePasswordWidget(),
                                      ),
                                    );
                                  },
                                  text: 'Forgot Your Password?',
                                  options: FFButtonOptions(
                                    width: 170,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context).white,
                                    textStyle: TextStyle(
                                      color: Color(0xFF23395D),
                                    ),
                                    elevation: 0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final user = await signInWithEmail(
                                      context,
                                      emailTextFieldController!.text,
                                      passwordTextFieldController!.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 300),
                                        reverseDuration:
                                            Duration(milliseconds: 300),
                                        child: HomePageWidget(),
                                      ),
                                    );
                                  },
                                  text: 'Login',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 50,
                                    color: Color(0xFF23395D),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .white,
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 30),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 6),
                                        child: Text(
                                          'Don’t have an account yet? ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .darkBG,
                                              ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 200),
                                              reverseDuration:
                                                  Duration(milliseconds: 200),
                                              child: RegisterWidget(),
                                            ),
                                          );
                                        },
                                        text: 'Register',
                                        options: FFButtonOptions(
                                          width: 100,
                                          height: 32,
                                          color: Color(0xFF23395D),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0),
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
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                    child: Text(
                      'Copyright 2022.  All rights reserved.',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFFB2B7B7),
                          ),
                    ),
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
