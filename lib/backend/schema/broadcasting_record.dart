import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BroadcastingRecord extends FirestoreRecord {
  BroadcastingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titlename" field.
  String? _titlename;
  String get titlename => _titlename ?? '';
  bool hasTitlename() => _titlename != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "typesoftitle" field.
  String? _typesoftitle;
  String get typesoftitle => _typesoftitle ?? '';
  bool hasTypesoftitle() => _typesoftitle != null;

  // "titleimage" field.
  String? _titleimage;
  String get titleimage => _titleimage ?? '';
  bool hasTitleimage() => _titleimage != null;

  // "recruiter_ID" field.
  DocumentReference? _recruiterID;
  DocumentReference? get recruiterID => _recruiterID;
  bool hasRecruiterID() => _recruiterID != null;

  void _initializeFields() {
    _titlename = snapshotData['titlename'] as String?;
    _description = snapshotData['description'] as String?;
    _typesoftitle = snapshotData['typesoftitle'] as String?;
    _titleimage = snapshotData['titleimage'] as String?;
    _recruiterID = snapshotData['recruiter_ID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('broadcasting');

  static Stream<BroadcastingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BroadcastingRecord.fromSnapshot(s));

  static Future<BroadcastingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BroadcastingRecord.fromSnapshot(s));

  static BroadcastingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BroadcastingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BroadcastingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BroadcastingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BroadcastingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BroadcastingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBroadcastingRecordData({
  String? titlename,
  String? description,
  String? typesoftitle,
  String? titleimage,
  DocumentReference? recruiterID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titlename': titlename,
      'description': description,
      'typesoftitle': typesoftitle,
      'titleimage': titleimage,
      'recruiter_ID': recruiterID,
    }.withoutNulls,
  );

  return firestoreData;
}

class BroadcastingRecordDocumentEquality
    implements Equality<BroadcastingRecord> {
  const BroadcastingRecordDocumentEquality();

  @override
  bool equals(BroadcastingRecord? e1, BroadcastingRecord? e2) {
    return e1?.titlename == e2?.titlename &&
        e1?.description == e2?.description &&
        e1?.typesoftitle == e2?.typesoftitle &&
        e1?.titleimage == e2?.titleimage &&
        e1?.recruiterID == e2?.recruiterID;
  }

  @override
  int hash(BroadcastingRecord? e) => const ListEquality().hash([
        e?.titlename,
        e?.description,
        e?.typesoftitle,
        e?.titleimage,
        e?.recruiterID
      ]);

  @override
  bool isValidKey(Object? o) => o is BroadcastingRecord;
}
