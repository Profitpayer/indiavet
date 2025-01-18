import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medicalrepresentative_widget.dart' show MedicalrepresentativeWidget;
import 'package:flutter/material.dart';

class MedicalrepresentativeModel
    extends FlutterFlowModel<MedicalrepresentativeWidget> {
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
