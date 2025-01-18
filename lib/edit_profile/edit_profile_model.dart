import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  Local state fields for this page.

  List<String> skilled = [];
  void addToSkilled(String item) => skilled.add(item);
  void removeFromSkilled(String item) => skilled.remove(item);
  void removeAtIndexFromSkilled(int index) => skilled.removeAt(index);
  void insertAtIndexInSkilled(int index, String item) =>
      skilled.insert(index, item);
  void updateSkilledAtIndex(int index, Function(String) updateFn) =>
      skilled[index] = updateFn(skilled[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Edit_Full_Name widget.
  FocusNode? editFullNameFocusNode;
  TextEditingController? editFullNameTextController;
  String? Function(BuildContext, String?)? editFullNameTextControllerValidator;
  // State field(s) for Edit_mobileno widget.
  FocusNode? editMobilenoFocusNode;
  TextEditingController? editMobilenoTextController;
  String? Function(BuildContext, String?)? editMobilenoTextControllerValidator;
  // State field(s) for Edit_PlacePicker widget.
  FFPlace editPlacePickerValue = const FFPlace();
  // State field(s) for Edit_designation widget.
  FocusNode? editDesignationFocusNode;
  TextEditingController? editDesignationTextController;
  String? Function(BuildContext, String?)?
      editDesignationTextControllerValidator;
  // State field(s) for Edit_Experoence widget.
  FocusNode? editExperoenceFocusNode;
  TextEditingController? editExperoenceTextController;
  String? Function(BuildContext, String?)?
      editExperoenceTextControllerValidator;
  // State field(s) for Editskilled widget.
  FocusNode? editskilledFocusNode;
  TextEditingController? editskilledTextController;
  String? Function(BuildContext, String?)? editskilledTextControllerValidator;
  // State field(s) for Edit_Shopname widget.
  FocusNode? editShopnameFocusNode;
  TextEditingController? editShopnameTextController;
  String? Function(BuildContext, String?)? editShopnameTextControllerValidator;
  // State field(s) for Edit_Shop_licenceno widget.
  FocusNode? editShopLicencenoFocusNode;
  TextEditingController? editShopLicencenoTextController;
  String? Function(BuildContext, String?)?
      editShopLicencenoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editFullNameFocusNode?.dispose();
    editFullNameTextController?.dispose();

    editMobilenoFocusNode?.dispose();
    editMobilenoTextController?.dispose();

    editDesignationFocusNode?.dispose();
    editDesignationTextController?.dispose();

    editExperoenceFocusNode?.dispose();
    editExperoenceTextController?.dispose();

    editskilledFocusNode?.dispose();
    editskilledTextController?.dispose();

    editShopnameFocusNode?.dispose();
    editShopnameTextController?.dispose();

    editShopLicencenoFocusNode?.dispose();
    editShopLicencenoTextController?.dispose();
  }
}
