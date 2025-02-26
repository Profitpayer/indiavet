import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bankkyc_widget.dart' show BankkycWidget;
import 'package:flutter/material.dart';

class BankkycModel extends FlutterFlowModel<BankkycWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EditAccountHolderName widget.
  FocusNode? editAccountHolderNameFocusNode;
  TextEditingController? editAccountHolderNameTextController;
  String? Function(BuildContext, String?)?
      editAccountHolderNameTextControllerValidator;
  // State field(s) for EditBankName widget.
  FocusNode? editBankNameFocusNode;
  TextEditingController? editBankNameTextController;
  String? Function(BuildContext, String?)? editBankNameTextControllerValidator;
  // State field(s) for editAccountNumber widget.
  FocusNode? editAccountNumberFocusNode;
  TextEditingController? editAccountNumberTextController;
  String? Function(BuildContext, String?)?
      editAccountNumberTextControllerValidator;
  // State field(s) for editIFSCCode widget.
  FocusNode? editIFSCCodeFocusNode;
  TextEditingController? editIFSCCodeTextController;
  String? Function(BuildContext, String?)? editIFSCCodeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editAccountHolderNameFocusNode?.dispose();
    editAccountHolderNameTextController?.dispose();

    editBankNameFocusNode?.dispose();
    editBankNameTextController?.dispose();

    editAccountNumberFocusNode?.dispose();
    editAccountNumberTextController?.dispose();

    editIFSCCodeFocusNode?.dispose();
    editIFSCCodeTextController?.dispose();
  }
}
