import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'news_offers_broadcasting_widget.dart' show NewsOffersBroadcastingWidget;
import 'package:flutter/material.dart';

class NewsOffersBroadcastingModel
    extends FlutterFlowModel<NewsOffersBroadcastingWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TitleNameforBroadcasting widget.
  FocusNode? titleNameforBroadcastingFocusNode1;
  TextEditingController? titleNameforBroadcastingTextController1;
  String? Function(BuildContext, String?)?
      titleNameforBroadcastingTextController1Validator;
  // State field(s) for TitleNameforBroadcasting widget.
  FocusNode? titleNameforBroadcastingFocusNode2;
  TextEditingController? titleNameforBroadcastingTextController2;
  String? Function(BuildContext, String?)?
      titleNameforBroadcastingTextController2Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleNameforBroadcastingFocusNode1?.dispose();
    titleNameforBroadcastingTextController1?.dispose();

    titleNameforBroadcastingFocusNode2?.dispose();
    titleNameforBroadcastingTextController2?.dispose();
  }
}
