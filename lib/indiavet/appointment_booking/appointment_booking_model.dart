import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'appointment_booking_widget.dart' show AppointmentBookingWidget;
import 'package:flutter/material.dart';

class AppointmentBookingModel
    extends FlutterFlowModel<AppointmentBookingWidget> {
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
  FFPlace appointmentCityValue = FFPlace();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];

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
  }
}
