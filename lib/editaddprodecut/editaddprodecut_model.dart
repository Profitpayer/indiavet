import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editaddprodecut_widget.dart' show EditaddprodecutWidget;
import 'package:flutter/material.dart';

class EditaddprodecutModel extends FlutterFlowModel<EditaddprodecutWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ProductasCatagr1 widget.
  FormFieldController<List<String>>? productasCatagr1ValueController;
  String? get productasCatagr1Value =>
      productasCatagr1ValueController?.value?.firstOrNull;
  set productasCatagr1Value(String? val) =>
      productasCatagr1ValueController?.value = val != null ? [val] : [];
  // State field(s) for Productname widget.
  FocusNode? productnameFocusNode1;
  TextEditingController? productnameTextController1;
  String? Function(BuildContext, String?)? productnameTextController1Validator;
  // State field(s) for Productname widget.
  FocusNode? productnameFocusNode2;
  TextEditingController? productnameTextController2;
  String? Function(BuildContext, String?)? productnameTextController2Validator;
  // State field(s) for Producthsncode widget.
  FocusNode? producthsncodeFocusNode;
  TextEditingController? producthsncodeTextController;
  String? Function(BuildContext, String?)?
      producthsncodeTextControllerValidator;
  // State field(s) for Productbatch widget.
  FocusNode? productbatchFocusNode;
  TextEditingController? productbatchTextController;
  String? Function(BuildContext, String?)? productbatchTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Productmrp widget.
  FocusNode? productmrpFocusNode;
  TextEditingController? productmrpTextController;
  String? Function(BuildContext, String?)? productmrpTextControllerValidator;
  // State field(s) for Productsalerate widget.
  FocusNode? productsalerateFocusNode;
  TextEditingController? productsalerateTextController;
  String? Function(BuildContext, String?)?
      productsalerateTextControllerValidator;
  // State field(s) for Productqty widget.
  FocusNode? productqtyFocusNode;
  TextEditingController? productqtyTextController;
  String? Function(BuildContext, String?)? productqtyTextControllerValidator;
  // State field(s) for Productdes widget.
  FocusNode? productdesFocusNode;
  TextEditingController? productdesTextController;
  String? Function(BuildContext, String?)? productdesTextControllerValidator;
  // State field(s) for prooffercode widget.
  FocusNode? prooffercodeFocusNode;
  TextEditingController? prooffercodeTextController;
  String? Function(BuildContext, String?)? prooffercodeTextControllerValidator;
  // State field(s) for Producapercestage widget.
  FocusNode? producapercestageFocusNode;
  TextEditingController? producapercestageTextController;
  String? Function(BuildContext, String?)?
      producapercestageTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productnameFocusNode1?.dispose();
    productnameTextController1?.dispose();

    productnameFocusNode2?.dispose();
    productnameTextController2?.dispose();

    producthsncodeFocusNode?.dispose();
    producthsncodeTextController?.dispose();

    productbatchFocusNode?.dispose();
    productbatchTextController?.dispose();

    productmrpFocusNode?.dispose();
    productmrpTextController?.dispose();

    productsalerateFocusNode?.dispose();
    productsalerateTextController?.dispose();

    productqtyFocusNode?.dispose();
    productqtyTextController?.dispose();

    productdesFocusNode?.dispose();
    productdesTextController?.dispose();

    prooffercodeFocusNode?.dispose();
    prooffercodeTextController?.dispose();

    producapercestageFocusNode?.dispose();
    producapercestageTextController?.dispose();
  }
}
