import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for new_email widget.
  TextEditingController? newEmailController;
  String? Function(BuildContext, String?)? newEmailControllerValidator;
  // State field(s) for new_phone_number widget.
  TextEditingController? newPhoneNumberController;
  String? Function(BuildContext, String?)? newPhoneNumberControllerValidator;
  // State field(s) for new_name widget.
  TextEditingController? newNameController;
  String? Function(BuildContext, String?)? newNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    newEmailController?.dispose();
    newPhoneNumberController?.dispose();
    newNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
