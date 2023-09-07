import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for new_email widget.
  TextEditingController? newEmailController;
  String? Function(BuildContext, String?)? newEmailControllerValidator;
  // State field(s) for new_phone_number widget.
  TextEditingController? newPhoneNumberController;
  String? Function(BuildContext, String?)? newPhoneNumberControllerValidator;
  String? _newPhoneNumberControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Phone number is between 10-11 digit';
    }
    if (val.length > 11) {
      return 'Phone number is between 10-11 digit';
    }

    return null;
  }

  // State field(s) for new_name widget.
  TextEditingController? newNameController;
  String? Function(BuildContext, String?)? newNameControllerValidator;
  String? _newNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Name needs to be in between 6-25 characters';
    }
    if (val.length > 25) {
      return 'Name needs to be in between 6-25 characters';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    newPhoneNumberControllerValidator = _newPhoneNumberControllerValidator;
    newNameControllerValidator = _newNameControllerValidator;
  }

  void dispose() {
    newEmailController?.dispose();
    newPhoneNumberController?.dispose();
    newNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
