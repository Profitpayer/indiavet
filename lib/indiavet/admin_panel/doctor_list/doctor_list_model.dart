import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'doctor_list_widget.dart' show DoctorListWidget;
import 'package:flutter/material.dart';

class DoctorListModel extends FlutterFlowModel<DoctorListWidget> {
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
