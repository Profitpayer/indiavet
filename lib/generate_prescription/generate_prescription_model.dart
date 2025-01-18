import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'generate_prescription_widget.dart' show GeneratePrescriptionWidget;
import 'package:flutter/material.dart';

class GeneratePrescriptionModel
    extends FlutterFlowModel<GeneratePrescriptionWidget> {
  ///  Local state fields for this page.

  List<String> medicines = [];
  void addToMedicines(String item) => medicines.add(item);
  void removeFromMedicines(String item) => medicines.remove(item);
  void removeAtIndexFromMedicines(int index) => medicines.removeAt(index);
  void insertAtIndexInMedicines(int index, String item) =>
      medicines.insert(index, item);
  void updateMedicinesAtIndex(int index, Function(String) updateFn) =>
      medicines[index] = updateFn(medicines[index]);

  List<String> typeofmedi = [];
  void addToTypeofmedi(String item) => typeofmedi.add(item);
  void removeFromTypeofmedi(String item) => typeofmedi.remove(item);
  void removeAtIndexFromTypeofmedi(int index) => typeofmedi.removeAt(index);
  void insertAtIndexInTypeofmedi(int index, String item) =>
      typeofmedi.insert(index, item);
  void updateTypeofmediAtIndex(int index, Function(String) updateFn) =>
      typeofmedi[index] = updateFn(typeofmedi[index]);

  List<String> medicinepqty = [];
  void addToMedicinepqty(String item) => medicinepqty.add(item);
  void removeFromMedicinepqty(String item) => medicinepqty.remove(item);
  void removeAtIndexFromMedicinepqty(int index) => medicinepqty.removeAt(index);
  void insertAtIndexInMedicinepqty(int index, String item) =>
      medicinepqty.insert(index, item);
  void updateMedicinepqtyAtIndex(int index, Function(String) updateFn) =>
      medicinepqty[index] = updateFn(medicinepqty[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for PatientName widget.
  FocusNode? patientNameFocusNode;
  TextEditingController? patientNameTextController;
  String? Function(BuildContext, String?)? patientNameTextControllerValidator;
  // State field(s) for Patientmobile widget.
  FocusNode? patientmobileFocusNode;
  TextEditingController? patientmobileTextController;
  String? Function(BuildContext, String?)? patientmobileTextControllerValidator;
  // State field(s) for Patientvill widget.
  FocusNode? patientvillFocusNode;
  TextEditingController? patientvillTextController;
  String? Function(BuildContext, String?)? patientvillTextControllerValidator;
  // State field(s) for DoctornameGenPres widget.
  FocusNode? doctornameGenPresFocusNode;
  TextEditingController? doctornameGenPresTextController;
  String? Function(BuildContext, String?)?
      doctornameGenPresTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for Addmedicines widget.
  FocusNode? addmedicinesFocusNode;
  TextEditingController? addmedicinesTextController;
  String? Function(BuildContext, String?)? addmedicinesTextControllerValidator;
  // State field(s) for prt1 widget.
  final prt1Key = GlobalKey();
  FocusNode? prt1FocusNode;
  TextEditingController? prt1TextController;
  String? prt1SelectedOption;
  String? Function(BuildContext, String?)? prt1TextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  String? get choiceChipsValue3 =>
      choiceChipsValueController3?.value?.firstOrNull;
  set choiceChipsValue3(String? val) =>
      choiceChipsValueController3?.value = val != null ? [val] : [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    patientNameFocusNode?.dispose();
    patientNameTextController?.dispose();

    patientmobileFocusNode?.dispose();
    patientmobileTextController?.dispose();

    patientvillFocusNode?.dispose();
    patientvillTextController?.dispose();

    doctornameGenPresFocusNode?.dispose();
    doctornameGenPresTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();

    addmedicinesFocusNode?.dispose();
    addmedicinesTextController?.dispose();

    prt1FocusNode?.dispose();
  }
}
