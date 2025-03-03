import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'prescription_sale_out_widget.dart' show PrescriptionSaleOutWidget;
import 'package:flutter/material.dart';

class PrescriptionSaleOutModel
    extends FlutterFlowModel<PrescriptionSaleOutWidget> {
  ///  Local state fields for this page.

  List<String> saleItemCode = [];
  void addToSaleItemCode(String item) => saleItemCode.add(item);
  void removeFromSaleItemCode(String item) => saleItemCode.remove(item);
  void removeAtIndexFromSaleItemCode(int index) => saleItemCode.removeAt(index);
  void insertAtIndexInSaleItemCode(int index, String item) =>
      saleItemCode.insert(index, item);
  void updateSaleItemCodeAtIndex(int index, Function(String) updateFn) =>
      saleItemCode[index] = updateFn(saleItemCode[index]);

  List<String> offerCode1 = [];
  void addToOfferCode1(String item) => offerCode1.add(item);
  void removeFromOfferCode1(String item) => offerCode1.remove(item);
  void removeAtIndexFromOfferCode1(int index) => offerCode1.removeAt(index);
  void insertAtIndexInOfferCode1(int index, String item) =>
      offerCode1.insert(index, item);
  void updateOfferCode1AtIndex(int index, Function(String) updateFn) =>
      offerCode1[index] = updateFn(offerCode1[index]);

  List<String> medicineName1 = [];
  void addToMedicineName1(String item) => medicineName1.add(item);
  void removeFromMedicineName1(String item) => medicineName1.remove(item);
  void removeAtIndexFromMedicineName1(int index) =>
      medicineName1.removeAt(index);
  void insertAtIndexInMedicineName1(int index, String item) =>
      medicineName1.insert(index, item);
  void updateMedicineName1AtIndex(int index, Function(String) updateFn) =>
      medicineName1[index] = updateFn(medicineName1[index]);

  List<int> sqty1 = [];
  void addToSqty1(int item) => sqty1.add(item);
  void removeFromSqty1(int item) => sqty1.remove(item);
  void removeAtIndexFromSqty1(int index) => sqty1.removeAt(index);
  void insertAtIndexInSqty1(int index, int item) => sqty1.insert(index, item);
  void updateSqty1AtIndex(int index, Function(int) updateFn) =>
      sqty1[index] = updateFn(sqty1[index]);

  List<String> delete1 = [];
  void addToDelete1(String item) => delete1.add(item);
  void removeFromDelete1(String item) => delete1.remove(item);
  void removeAtIndexFromDelete1(int index) => delete1.removeAt(index);
  void insertAtIndexInDelete1(int index, String item) =>
      delete1.insert(index, item);
  void updateDelete1AtIndex(int index, Function(String) updateFn) =>
      delete1[index] = updateFn(delete1[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for OfferCode1 widget.
  FocusNode? offerCode1FocusNode;
  TextEditingController? offerCode1TextController;
  String? Function(BuildContext, String?)? offerCode1TextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    offerCode1FocusNode?.dispose();
    offerCode1TextController?.dispose();
  }
}
