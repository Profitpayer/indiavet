import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicalstoreRecord extends FirestoreRecord {
  MedicalstoreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "medicalstore_name" field.
  String? _medicalstoreName;
  String get medicalstoreName => _medicalstoreName ?? '';
  bool hasMedicalstoreName() => _medicalstoreName != null;

  // "medicalstore_description" field.
  String? _medicalstoreDescription;
  String get medicalstoreDescription => _medicalstoreDescription ?? '';
  bool hasMedicalstoreDescription() => _medicalstoreDescription != null;

  // "medicalstore_address" field.
  String? _medicalstoreAddress;
  String get medicalstoreAddress => _medicalstoreAddress ?? '';
  bool hasMedicalstoreAddress() => _medicalstoreAddress != null;

  // "medicalstore_location" field.
  LatLng? _medicalstoreLocation;
  LatLng? get medicalstoreLocation => _medicalstoreLocation;
  bool hasMedicalstoreLocation() => _medicalstoreLocation != null;

  // "medicalstore_rating" field.
  int? _medicalstoreRating;
  int get medicalstoreRating => _medicalstoreRating ?? 0;
  bool hasMedicalstoreRating() => _medicalstoreRating != null;

  // "medicalstore_Product_reff" field.
  DocumentReference? _medicalstoreProductReff;
  DocumentReference? get medicalstoreProductReff => _medicalstoreProductReff;
  bool hasMedicalstoreProductReff() => _medicalstoreProductReff != null;

  void _initializeFields() {
    _medicalstoreName = snapshotData['medicalstore_name'] as String?;
    _medicalstoreDescription =
        snapshotData['medicalstore_description'] as String?;
    _medicalstoreAddress = snapshotData['medicalstore_address'] as String?;
    _medicalstoreLocation = snapshotData['medicalstore_location'] as LatLng?;
    _medicalstoreRating = castToType<int>(snapshotData['medicalstore_rating']);
    _medicalstoreProductReff =
        snapshotData['medicalstore_Product_reff'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicalstore');

  static Stream<MedicalstoreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicalstoreRecord.fromSnapshot(s));

  static Future<MedicalstoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicalstoreRecord.fromSnapshot(s));

  static MedicalstoreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicalstoreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicalstoreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicalstoreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicalstoreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicalstoreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicalstoreRecordData({
  String? medicalstoreName,
  String? medicalstoreDescription,
  String? medicalstoreAddress,
  LatLng? medicalstoreLocation,
  int? medicalstoreRating,
  DocumentReference? medicalstoreProductReff,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'medicalstore_name': medicalstoreName,
      'medicalstore_description': medicalstoreDescription,
      'medicalstore_address': medicalstoreAddress,
      'medicalstore_location': medicalstoreLocation,
      'medicalstore_rating': medicalstoreRating,
      'medicalstore_Product_reff': medicalstoreProductReff,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicalstoreRecordDocumentEquality
    implements Equality<MedicalstoreRecord> {
  const MedicalstoreRecordDocumentEquality();

  @override
  bool equals(MedicalstoreRecord? e1, MedicalstoreRecord? e2) {
    return e1?.medicalstoreName == e2?.medicalstoreName &&
        e1?.medicalstoreDescription == e2?.medicalstoreDescription &&
        e1?.medicalstoreAddress == e2?.medicalstoreAddress &&
        e1?.medicalstoreLocation == e2?.medicalstoreLocation &&
        e1?.medicalstoreRating == e2?.medicalstoreRating &&
        e1?.medicalstoreProductReff == e2?.medicalstoreProductReff;
  }

  @override
  int hash(MedicalstoreRecord? e) => const ListEquality().hash([
        e?.medicalstoreName,
        e?.medicalstoreDescription,
        e?.medicalstoreAddress,
        e?.medicalstoreLocation,
        e?.medicalstoreRating,
        e?.medicalstoreProductReff
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicalstoreRecord;
}
