import '/components/doctornavigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'doctor_panel_widget.dart' show DoctorPanelWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DoctorPanelModel extends FlutterFlowModel<DoctorPanelWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

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
