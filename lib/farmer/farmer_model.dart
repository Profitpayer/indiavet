import '/components/farmernavigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'farmer_widget.dart' show FarmerWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FarmerModel extends FlutterFlowModel<FarmerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for Farmernavigation component.
  late FarmernavigationModel farmernavigationModel;

  @override
  void initState(BuildContext context) {
    farmernavigationModel = createModel(context, () => FarmernavigationModel());
  }

  @override
  void dispose() {
    farmernavigationModel.dispose();
  }
}
