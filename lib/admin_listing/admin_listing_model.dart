import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admin_listing_widget.dart' show AdminListingWidget;
import 'package:flutter/material.dart';

class AdminListingModel extends FlutterFlowModel<AdminListingWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Productcode widget.
  FocusNode? productcodeFocusNode;
  TextEditingController? productcodeTextController;
  String? Function(BuildContext, String?)? productcodeTextControllerValidator;
  // State field(s) for Productqty widget.
  FocusNode? productqtyFocusNode1;
  TextEditingController? productqtyTextController1;
  String? Function(BuildContext, String?)? productqtyTextController1Validator;
  // State field(s) for Productqty widget.
  FocusNode? productqtyFocusNode2;
  TextEditingController? productqtyTextController2;
  String? Function(BuildContext, String?)? productqtyTextController2Validator;
  DateTime? datePicked;
  // State field(s) for ProductName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for Productmrp widget.
  FocusNode? productmrpFocusNode;
  TextEditingController? productmrpTextController;
  String? Function(BuildContext, String?)? productmrpTextControllerValidator;
  // State field(s) for Productsale widget.
  FocusNode? productsaleFocusNode;
  TextEditingController? productsaleTextController;
  String? Function(BuildContext, String?)? productsaleTextControllerValidator;
  // State field(s) for Productcat widget.
  String? productcatValue;
  FormFieldController<String>? productcatValueController;
  // State field(s) for Productdes widget.
  FocusNode? productdesFocusNode;
  TextEditingController? productdesTextController;
  String? Function(BuildContext, String?)? productdesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productcodeFocusNode?.dispose();
    productcodeTextController?.dispose();

    productqtyFocusNode1?.dispose();
    productqtyTextController1?.dispose();

    productqtyFocusNode2?.dispose();
    productqtyTextController2?.dispose();

    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    productmrpFocusNode?.dispose();
    productmrpTextController?.dispose();

    productsaleFocusNode?.dispose();
    productsaleTextController?.dispose();

    productdesFocusNode?.dispose();
    productdesTextController?.dispose();
  }
}
