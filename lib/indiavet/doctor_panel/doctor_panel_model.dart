import '/components/doctornavigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doctor_panel_widget.dart' show DoctorPanelWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DoctorPanelModel extends FlutterFlowModel<DoctorPanelWidget> {
  ///  Local state fields for this page.

  int credit = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for Doctornavigation component.
  late DoctornavigationModel doctornavigationModel;

  @override
  void initState(BuildContext context) {
    doctornavigationModel = createModel(context, () => DoctornavigationModel());
  }

  @override
  void dispose() {
    doctornavigationModel.dispose();
  }
}
