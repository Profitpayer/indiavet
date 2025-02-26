import '/flutter_flow/flutter_flow_util.dart';
import 'details43_workout_summary_widget.dart'
    show Details43WorkoutSummaryWidget;
import 'package:flutter/material.dart';

class Details43WorkoutSummaryModel
    extends FlutterFlowModel<Details43WorkoutSummaryWidget> {
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
