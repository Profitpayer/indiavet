import '/flutter_flow/flutter_flow_util.dart';
import 'prescription_history_copy_widget.dart'
    show PrescriptionHistoryCopyWidget;
import 'package:flutter/material.dart';

class PrescriptionHistoryCopyModel
    extends FlutterFlowModel<PrescriptionHistoryCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
