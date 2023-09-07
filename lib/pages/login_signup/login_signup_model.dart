import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginSignupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for login_Email widget.
  TextEditingController? loginEmailController;
  String? Function(BuildContext, String?)? loginEmailControllerValidator;
  // State field(s) for login_password widget.
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordControllerValidator;
  // State field(s) for register_email widget.
  TextEditingController? registerEmailController;
  String? Function(BuildContext, String?)? registerEmailControllerValidator;
  // State field(s) for register_password widget.
  TextEditingController? registerPasswordController;
  late bool registerPasswordVisibility;
  String? Function(BuildContext, String?)? registerPasswordControllerValidator;
  // State field(s) for register_password_confirm widget.
  TextEditingController? registerPasswordConfirmController;
  late bool registerPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      registerPasswordConfirmControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginPasswordVisibility = false;
    registerPasswordVisibility = false;
    registerPasswordConfirmVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    loginEmailController?.dispose();
    loginPasswordController?.dispose();
    registerEmailController?.dispose();
    registerPasswordController?.dispose();
    registerPasswordConfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
