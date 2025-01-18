import '/components/navigation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_dashboard_widget.dart' show HomeDashboardWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeDashboardModel extends FlutterFlowModel<HomeDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for navigation component.
  late NavigationModel navigationModel;

  @override
  void initState(BuildContext context) {
    navigationModel = createModel(context, () => NavigationModel());
  }

  @override
  void dispose() {
    navigationModel.dispose();
  }

  /// Action blocks.
  Future language1(BuildContext context) async {
    await language1(context);
  }
}
