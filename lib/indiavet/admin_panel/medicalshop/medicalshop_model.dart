import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medicalshop_widget.dart' show MedicalshopWidget;
import 'package:flutter/material.dart';

class MedicalshopModel extends FlutterFlowModel<MedicalshopWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxListTile widget.
  Map<UsersRecord, bool> checkboxListTileValueMap = {};
  List<UsersRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
