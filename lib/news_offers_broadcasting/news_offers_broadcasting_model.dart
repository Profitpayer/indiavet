import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'news_offers_broadcasting_widget.dart' show NewsOffersBroadcastingWidget;
import 'package:flutter/material.dart';

class NewsOffersBroadcastingModel
    extends FlutterFlowModel<NewsOffersBroadcastingWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TitleBroadC1 widget.
  FocusNode? titleBroadC1FocusNode;
  TextEditingController? titleBroadC1TextController;
  String? Function(BuildContext, String?)? titleBroadC1TextControllerValidator;
  // State field(s) for DiscTot1 widget.
  FocusNode? discTot1FocusNode;
  TextEditingController? discTot1TextController;
  String? Function(BuildContext, String?)? discTot1TextControllerValidator;
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
    titleBroadC1FocusNode?.dispose();
    titleBroadC1TextController?.dispose();

    discTot1FocusNode?.dispose();
    discTot1TextController?.dispose();
  }
}
