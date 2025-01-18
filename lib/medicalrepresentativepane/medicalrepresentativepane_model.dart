import '/components/m_rnavigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medicalrepresentativepane_widget.dart'
    show MedicalrepresentativepaneWidget;
import 'package:flutter/material.dart';

class MedicalrepresentativepaneModel
    extends FlutterFlowModel<MedicalrepresentativepaneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for MRnavigation component.
  late MRnavigationModel mRnavigationModel;

  @override
  void initState(BuildContext context) {
    mRnavigationModel = createModel(context, () => MRnavigationModel());
  }

  @override
  void dispose() {
    mRnavigationModel.dispose();
  }
}
