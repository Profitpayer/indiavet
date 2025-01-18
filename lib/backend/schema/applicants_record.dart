import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicantsRecord extends FirestoreRecord {
  ApplicantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "applicants_ID" field.
  DocumentReference? _applicantsID;
  DocumentReference? get applicantsID => _applicantsID;
  bool hasApplicantsID() => _applicantsID != null;

  // "job_ID" field.
  DocumentReference? _jobID;
  DocumentReference? get jobID => _jobID;
  bool hasJobID() => _jobID != null;

  // "recuter_ID" field.
  DocumentReference? _recuterID;
  DocumentReference? get recuterID => _recuterID;
  bool hasRecuterID() => _recuterID != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "create_at" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  void _initializeFields() {
    _applicantsID = snapshotData['applicants_ID'] as DocumentReference?;
    _jobID = snapshotData['job_ID'] as DocumentReference?;
    _recuterID = snapshotData['recuter_ID'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _createAt = snapshotData['create_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('applicants');

  static Stream<ApplicantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicantsRecord.fromSnapshot(s));

  static Future<ApplicantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplicantsRecord.fromSnapshot(s));

  static ApplicantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicantsRecordData({
  DocumentReference? applicantsID,
  DocumentReference? jobID,
  DocumentReference? recuterID,
  String? status,
  DateTime? createAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'applicants_ID': applicantsID,
      'job_ID': jobID,
      'recuter_ID': recuterID,
      'status': status,
      'create_at': createAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplicantsRecordDocumentEquality implements Equality<ApplicantsRecord> {
  const ApplicantsRecordDocumentEquality();

  @override
  bool equals(ApplicantsRecord? e1, ApplicantsRecord? e2) {
    return e1?.applicantsID == e2?.applicantsID &&
        e1?.jobID == e2?.jobID &&
        e1?.recuterID == e2?.recuterID &&
        e1?.status == e2?.status &&
        e1?.createAt == e2?.createAt;
  }

  @override
  int hash(ApplicantsRecord? e) => const ListEquality()
      .hash([e?.applicantsID, e?.jobID, e?.recuterID, e?.status, e?.createAt]);

  @override
  bool isValidKey(Object? o) => o is ApplicantsRecord;
}
