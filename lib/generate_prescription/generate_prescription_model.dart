import '/backend/backend.dart';
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

  List<String> medtiming = [];
  void addToMedtiming(String item) => medtiming.add(item);
  void removeFromMedtiming(String item) => medtiming.remove(item);
  void removeAtIndexFromMedtiming(int index) => medtiming.removeAt(index);
  void insertAtIndexInMedtiming(int index, String item) =>
      medtiming.insert(index, item);
  void updateMedtimingAtIndex(int index, Function(String) updateFn) =>
      medtiming[index] = updateFn(medtiming[index]);

  List<String> commissioncode = [];
  void addToCommissioncode(String item) => commissioncode.add(item);
  void removeFromCommissioncode(String item) => commissioncode.remove(item);
  void removeAtIndexFromCommissioncode(int index) =>
      commissioncode.removeAt(index);
  void insertAtIndexInCommissioncode(int index, String item) =>
      commissioncode.insert(index, item);
  void updateCommissioncodeAtIndex(int index, Function(String) updateFn) =>
      commissioncode[index] = updateFn(commissioncode[index]);

  List<String> delete = [];
  void addToDelete(String item) => delete.add(item);
  void removeFromDelete(String item) => delete.remove(item);
  void removeAtIndexFromDelete(int index) => delete.removeAt(index);
  void insertAtIndexInDelete(int index, String item) =>
      delete.insert(index, item);
  void updateDeleteAtIndex(int index, Function(String) updateFn) =>
      delete[index] = updateFn(delete[index]);

  List<int> srno = [];
  void addToSrno(int item) => srno.add(item);
  void removeFromSrno(int item) => srno.remove(item);
  void removeAtIndexFromSrno(int index) => srno.removeAt(index);
  void insertAtIndexInSrno(int index, int item) => srno.insert(index, item);
  void updateSrnoAtIndex(int index, Function(int) updateFn) =>
      srno[index] = updateFn(srno[index]);

  List<String> itemCode = [];
  void addToItemCode(String item) => itemCode.add(item);
  void removeFromItemCode(String item) => itemCode.remove(item);
  void removeAtIndexFromItemCode(int index) => itemCode.removeAt(index);
  void insertAtIndexInItemCode(int index, String item) =>
      itemCode.insert(index, item);
  void updateItemCodeAtIndex(int index, Function(String) updateFn) =>
      itemCode[index] = updateFn(itemCode[index]);

  List<double> saleRate = [];
  void addToSaleRate(double item) => saleRate.add(item);
  void removeFromSaleRate(double item) => saleRate.remove(item);
  void removeAtIndexFromSaleRate(int index) => saleRate.removeAt(index);
  void insertAtIndexInSaleRate(int index, double item) =>
      saleRate.insert(index, item);
  void updateSaleRateAtIndex(int index, Function(double) updateFn) =>
      saleRate[index] = updateFn(saleRate[index]);

  List<bool> offercodeChecking = [];
  void addToOffercodeChecking(bool item) => offercodeChecking.add(item);
  void removeFromOffercodeChecking(bool item) => offercodeChecking.remove(item);
  void removeAtIndexFromOffercodeChecking(int index) =>
      offercodeChecking.removeAt(index);
  void insertAtIndexInOffercodeChecking(int index, bool item) =>
      offercodeChecking.insert(index, item);
  void updateOffercodeCheckingAtIndex(int index, Function(bool) updateFn) =>
      offercodeChecking[index] = updateFn(offercodeChecking[index]);

  List<double> dCommission = [];
  void addToDCommission(double item) => dCommission.add(item);
  void removeFromDCommission(double item) => dCommission.remove(item);
  void removeAtIndexFromDCommission(int index) => dCommission.removeAt(index);
  void insertAtIndexInDCommission(int index, double item) =>
      dCommission.insert(index, item);
  void updateDCommissionAtIndex(int index, Function(double) updateFn) =>
      dCommission[index] = updateFn(dCommission[index]);

  List<double> rCommission = [];
  void addToRCommission(double item) => rCommission.add(item);
  void removeFromRCommission(double item) => rCommission.remove(item);
  void removeAtIndexFromRCommission(int index) => rCommission.removeAt(index);
  void insertAtIndexInRCommission(int index, double item) =>
      rCommission.insert(index, item);
  void updateRCommissionAtIndex(int index, Function(double) updateFn) =>
      rCommission[index] = updateFn(rCommission[index]);

  List<String> saleStatus = [];
  void addToSaleStatus(String item) => saleStatus.add(item);
  void removeFromSaleStatus(String item) => saleStatus.remove(item);
  void removeAtIndexFromSaleStatus(int index) => saleStatus.removeAt(index);
  void insertAtIndexInSaleStatus(int index, String item) =>
      saleStatus.insert(index, item);
  void updateSaleStatusAtIndex(int index, Function(String) updateFn) =>
      saleStatus[index] = updateFn(saleStatus[index]);

  List<double> billingAmount = [];
  void addToBillingAmount(double item) => billingAmount.add(item);
  void removeFromBillingAmount(double item) => billingAmount.remove(item);
  void removeAtIndexFromBillingAmount(int index) =>
      billingAmount.removeAt(index);
  void insertAtIndexInBillingAmount(int index, double item) =>
      billingAmount.insert(index, item);
  void updateBillingAmountAtIndex(int index, Function(double) updateFn) =>
      billingAmount[index] = updateFn(billingAmount[index]);

  List<String> proOfferCode = [];
  void addToProOfferCode(String item) => proOfferCode.add(item);
  void removeFromProOfferCode(String item) => proOfferCode.remove(item);
  void removeAtIndexFromProOfferCode(int index) => proOfferCode.removeAt(index);
  void insertAtIndexInProOfferCode(int index, String item) =>
      proOfferCode.insert(index, item);
  void updateProOfferCodeAtIndex(int index, Function(String) updateFn) =>
      proOfferCode[index] = updateFn(proOfferCode[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips-1 widget.
  FormFieldController<List<String>>? choiceChips1ValueController;
  String? get choiceChips1Value =>
      choiceChips1ValueController?.value?.firstOrNull;
  set choiceChips1Value(String? val) =>
      choiceChips1ValueController?.value = val != null ? [val] : [];
  // State field(s) for AppointmentBookingMobile widget.
  FocusNode? appointmentBookingMobileFocusNode;
  TextEditingController? appointmentBookingMobileTextController;
  String? Function(BuildContext, String?)?
      appointmentBookingMobileTextControllerValidator;
  // State field(s) for AppointmentSelect widget.
  Map<JobsRecord, bool> appointmentSelectValueMap = {};
  List<JobsRecord> get appointmentSelectCheckedItems =>
      appointmentSelectValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

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
  // State field(s) for DoctorID1 widget.
  FocusNode? doctorID1FocusNode;
  TextEditingController? doctorID1TextController;
  String? Function(BuildContext, String?)? doctorID1TextControllerValidator;
  // State field(s) for ChoiceChips-2 widget.
  FormFieldController<List<String>>? choiceChips2ValueController;
  String? get choiceChips2Value =>
      choiceChips2ValueController?.value?.firstOrNull;
  set choiceChips2Value(String? val) =>
      choiceChips2ValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips-3 widget.
  FormFieldController<List<String>>? choiceChips3ValueController;
  String? get choiceChips3Value =>
      choiceChips3ValueController?.value?.firstOrNull;
  set choiceChips3Value(String? val) =>
      choiceChips3ValueController?.value = val != null ? [val] : [];
  // State field(s) for Medicinename1 widget.
  FocusNode? medicinename1FocusNode;
  TextEditingController? medicinename1TextController;
  String? Function(BuildContext, String?)? medicinename1TextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for Addmedicines widget.
  FocusNode? addmedicinesFocusNode;
  TextEditingController? addmedicinesTextController;
  String? Function(BuildContext, String?)? addmedicinesTextControllerValidator;
  // State field(s) for ChoiceChips-4 widget.
  FormFieldController<List<String>>? choiceChips4ValueController;
  String? get choiceChips4Value =>
      choiceChips4ValueController?.value?.firstOrNull;
  set choiceChips4Value(String? val) =>
      choiceChips4ValueController?.value = val != null ? [val] : [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    appointmentBookingMobileFocusNode?.dispose();
    appointmentBookingMobileTextController?.dispose();

    patientNameFocusNode?.dispose();
    patientNameTextController?.dispose();

    patientmobileFocusNode?.dispose();
    patientmobileTextController?.dispose();

    patientvillFocusNode?.dispose();
    patientvillTextController?.dispose();

    doctorID1FocusNode?.dispose();
    doctorID1TextController?.dispose();

    medicinename1FocusNode?.dispose();
    medicinename1TextController?.dispose();

    addmedicinesFocusNode?.dispose();
    addmedicinesTextController?.dispose();
  }
}
