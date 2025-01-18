import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'm_r_list_widget.dart' show MRListWidget;
import 'package:flutter/material.dart';

class MRListModel extends FlutterFlowModel<MRListWidget> {
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
