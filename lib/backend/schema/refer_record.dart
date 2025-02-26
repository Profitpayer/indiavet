import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReferRecord extends FirestoreRecord {
  ReferRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "addcoin" field.
  int? _addcoin;
  int get addcoin => _addcoin ?? 0;
  bool hasAddcoin() => _addcoin != null;

  // "rcode" field.
  String? _rcode;
  String get rcode => _rcode ?? '';
  bool hasRcode() => _rcode != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _addcoin = castToType<int>(snapshotData['addcoin']);
    _rcode = snapshotData['rcode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('refer');

  static Stream<ReferRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReferRecord.fromSnapshot(s));

  static Future<ReferRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReferRecord.fromSnapshot(s));

  static ReferRecord fromSnapshot(DocumentSnapshot snapshot) => ReferRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReferRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReferRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReferRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReferRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReferRecordData({
  String? id,
  int? addcoin,
  String? rcode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'addcoin': addcoin,
      'rcode': rcode,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReferRecordDocumentEquality implements Equality<ReferRecord> {
  const ReferRecordDocumentEquality();

  @override
  bool equals(ReferRecord? e1, ReferRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.addcoin == e2?.addcoin &&
        e1?.rcode == e2?.rcode;
  }

  @override
  int hash(ReferRecord? e) =>
      const ListEquality().hash([e?.id, e?.addcoin, e?.rcode]);

  @override
  bool isValidKey(Object? o) => o is ReferRecord;
}
