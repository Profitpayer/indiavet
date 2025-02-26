// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProOfferCode11Struct extends FFFirebaseStruct {
  ProOfferCode11Struct({
    List<String>? proOfferCode1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _proOfferCode1 = proOfferCode1,
        super(firestoreUtilData);

  // "ProOfferCode1" field.
  List<String>? _proOfferCode1;
  List<String> get proOfferCode1 => _proOfferCode1 ?? const [];
  set proOfferCode1(List<String>? val) => _proOfferCode1 = val;

  void updateProOfferCode1(Function(List<String>) updateFn) {
    updateFn(_proOfferCode1 ??= []);
  }

  bool hasProOfferCode1() => _proOfferCode1 != null;

  static ProOfferCode11Struct fromMap(Map<String, dynamic> data) =>
      ProOfferCode11Struct(
        proOfferCode1: getDataList(data['ProOfferCode1']),
      );

  static ProOfferCode11Struct? maybeFromMap(dynamic data) => data is Map
      ? ProOfferCode11Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ProOfferCode1': _proOfferCode1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ProOfferCode1': serializeParam(
          _proOfferCode1,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ProOfferCode11Struct fromSerializableMap(Map<String, dynamic> data) =>
      ProOfferCode11Struct(
        proOfferCode1: deserializeParam<String>(
          data['ProOfferCode1'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ProOfferCode11Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProOfferCode11Struct &&
        listEquality.equals(proOfferCode1, other.proOfferCode1);
  }

  @override
  int get hashCode => const ListEquality().hash([proOfferCode1]);
}

ProOfferCode11Struct createProOfferCode11Struct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProOfferCode11Struct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProOfferCode11Struct? updateProOfferCode11Struct(
  ProOfferCode11Struct? proOfferCode11, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    proOfferCode11
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProOfferCode11StructData(
  Map<String, dynamic> firestoreData,
  ProOfferCode11Struct? proOfferCode11,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (proOfferCode11 == null) {
    return;
  }
  if (proOfferCode11.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && proOfferCode11.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final proOfferCode11Data =
      getProOfferCode11FirestoreData(proOfferCode11, forFieldValue);
  final nestedData =
      proOfferCode11Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = proOfferCode11.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProOfferCode11FirestoreData(
  ProOfferCode11Struct? proOfferCode11, [
  bool forFieldValue = false,
]) {
  if (proOfferCode11 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(proOfferCode11.toMap());

  // Add any Firestore field values
  proOfferCode11.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProOfferCode11ListFirestoreData(
  List<ProOfferCode11Struct>? proOfferCode11s,
) =>
    proOfferCode11s
        ?.map((e) => getProOfferCode11FirestoreData(e, true))
        .toList() ??
    [];
