import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'edit_addproduct_widget.dart' show EditAddproductWidget;
import 'package:flutter/material.dart';

class EditAddproductModel extends FlutterFlowModel<EditAddproductWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ProductasCatagr1 widget.
  FormFieldController<List<String>>? productasCatagr1ValueController;
  String? get productasCatagr1Value =>
      productasCatagr1ValueController?.value?.firstOrNull;
  set productasCatagr1Value(String? val) =>
      productasCatagr1ValueController?.value = val != null ? [val] : [];
  // State field(s) for Productname widget.
  FocusNode? productnameFocusNode;
  TextEditingController? productnameTextController;
  String? Function(BuildContext, String?)? productnameTextControllerValidator;
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
  // State field(s) for Producapercestage widget.
  FocusNode? producapercestageFocusNode1;
  TextEditingController? producapercestageTextController1;
  String? Function(BuildContext, String?)?
      producapercestageTextController1Validator;
  // State field(s) for Producapercestage widget.
  FocusNode? producapercestageFocusNode2;
  TextEditingController? producapercestageTextController2;
  String? Function(BuildContext, String?)?
      producapercestageTextController2Validator;
  // State field(s) for Producapercestage widget.
  FocusNode? producapercestageFocusNode3;
  TextEditingController? producapercestageTextController3;
  String? Function(BuildContext, String?)?
      producapercestageTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productnameFocusNode?.dispose();
    productnameTextController?.dispose();

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

    producapercestageFocusNode1?.dispose();
    producapercestageTextController1?.dispose();

    producapercestageFocusNode2?.dispose();
    producapercestageTextController2?.dispose();

    producapercestageFocusNode3?.dispose();
    producapercestageTextController3?.dispose();
  }
}
