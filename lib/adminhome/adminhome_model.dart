import '/components/adminindiavet_navbarr_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'adminhome_widget.dart' show AdminhomeWidget;
import 'package:flutter/material.dart';

class AdminhomeModel extends FlutterFlowModel<AdminhomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminindiavetNavbarr component.
  late AdminindiavetNavbarrModel adminindiavetNavbarrModel;

  @override
  void initState(BuildContext context) {
    adminindiavetNavbarrModel =
        createModel(context, () => AdminindiavetNavbarrModel());
  }

  @override
  void dispose() {
    adminindiavetNavbarrModel.dispose();
  }
}
