import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tp1_widget.dart' show Tp1Widget;
import 'package:flutter/material.dart';

class Tp1Model extends FlutterFlowModel<Tp1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AppointmentName widget.
  FocusNode? appointmentNameFocusNode;
  TextEditingController? appointmentNameTextController;
  String? Function(BuildContext, String?)?
      appointmentNameTextControllerValidator;
  // State field(s) for AppointmentMobile widget.
  FocusNode? appointmentMobileFocusNode;
  TextEditingController? appointmentMobileTextController;
  String? Function(BuildContext, String?)?
      appointmentMobileTextControllerValidator;
  // State field(s) for AppointmentVill widget.
  FocusNode? appointmentVillFocusNode;
  TextEditingController? appointmentVillTextController;
  String? Function(BuildContext, String?)?
      appointmentVillTextControllerValidator;
  // State field(s) for AppointmentCity widget.
  FFPlace appointmentCityValue = const FFPlace();
  // State field(s) for Petname widget.
  final petnameKey = GlobalKey();
  FocusNode? petnameFocusNode;
  TextEditingController? petnameTextController;
  String? petnameSelectedOption;
  String? Function(BuildContext, String?)? petnameTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    appointmentNameFocusNode?.dispose();
    appointmentNameTextController?.dispose();

    appointmentMobileFocusNode?.dispose();
    appointmentMobileTextController?.dispose();

    appointmentVillFocusNode?.dispose();
    appointmentVillTextController?.dispose();

    petnameFocusNode?.dispose();
  }
}
