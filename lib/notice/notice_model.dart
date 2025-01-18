import '/flutter_flow/flutter_flow_util.dart';
import 'notice_widget.dart' show NoticeWidget;
import 'package:flutter/material.dart';

class NoticeModel extends FlutterFlowModel<NoticeWidget> {
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
