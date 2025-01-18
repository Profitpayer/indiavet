import '/components/medicalnavigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medical_store_widget.dart' show MedicalStoreWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MedicalStoreModel extends FlutterFlowModel<MedicalStoreWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for Medicalnavigation component.
  late MedicalnavigationModel medicalnavigationModel;

  @override
  void initState(BuildContext context) {
    medicalnavigationModel =
        createModel(context, () => MedicalnavigationModel());
  }

  @override
  void dispose() {
    medicalnavigationModel.dispose();
  }
}
