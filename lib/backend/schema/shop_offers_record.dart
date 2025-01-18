import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopOffersRecord extends FirestoreRecord {
  ShopOffersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "offer_name" field.
  String? _offerName;
  String get offerName => _offerName ?? '';
  bool hasOfferName() => _offerName != null;

  // "offer_id" field.
  String? _offerId;
  String get offerId => _offerId ?? '';
  bool hasOfferId() => _offerId != null;

  // "offer_discount" field.
  String? _offerDiscount;
  String get offerDiscount => _offerDiscount ?? '';
  bool hasOfferDiscount() => _offerDiscount != null;

  // "offer_description" field.
  String? _offerDescription;
  String get offerDescription => _offerDescription ?? '';
  bool hasOfferDescription() => _offerDescription != null;

  // "offer_p_reff" field.
  DocumentReference? _offerPReff;
  DocumentReference? get offerPReff => _offerPReff;
  bool hasOfferPReff() => _offerPReff != null;

  // "offer_image" field.
  String? _offerImage;
  String get offerImage => _offerImage ?? '';
  bool hasOfferImage() => _offerImage != null;

  // "medcalstore_reff" field.
  DocumentReference? _medcalstoreReff;
  DocumentReference? get medcalstoreReff => _medcalstoreReff;
  bool hasMedcalstoreReff() => _medcalstoreReff != null;

  void _initializeFields() {
    _offerName = snapshotData['offer_name'] as String?;
    _offerId = snapshotData['offer_id'] as String?;
    _offerDiscount = snapshotData['offer_discount'] as String?;
    _offerDescription = snapshotData['offer_description'] as String?;
    _offerPReff = snapshotData['offer_p_reff'] as DocumentReference?;
    _offerImage = snapshotData['offer_image'] as String?;
    _medcalstoreReff = snapshotData['medcalstore_reff'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shop_offers');

  static Stream<ShopOffersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopOffersRecord.fromSnapshot(s));

  static Future<ShopOffersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopOffersRecord.fromSnapshot(s));

  static ShopOffersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShopOffersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopOffersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopOffersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopOffersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopOffersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopOffersRecordData({
  String? offerName,
  String? offerId,
  String? offerDiscount,
  String? offerDescription,
  DocumentReference? offerPReff,
  String? offerImage,
  DocumentReference? medcalstoreReff,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'offer_name': offerName,
      'offer_id': offerId,
      'offer_discount': offerDiscount,
      'offer_description': offerDescription,
      'offer_p_reff': offerPReff,
      'offer_image': offerImage,
      'medcalstore_reff': medcalstoreReff,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopOffersRecordDocumentEquality implements Equality<ShopOffersRecord> {
  const ShopOffersRecordDocumentEquality();

  @override
  bool equals(ShopOffersRecord? e1, ShopOffersRecord? e2) {
    return e1?.offerName == e2?.offerName &&
        e1?.offerId == e2?.offerId &&
        e1?.offerDiscount == e2?.offerDiscount &&
        e1?.offerDescription == e2?.offerDescription &&
        e1?.offerPReff == e2?.offerPReff &&
        e1?.offerImage == e2?.offerImage &&
        e1?.medcalstoreReff == e2?.medcalstoreReff;
  }

  @override
  int hash(ShopOffersRecord? e) => const ListEquality().hash([
        e?.offerName,
        e?.offerId,
        e?.offerDiscount,
        e?.offerDescription,
        e?.offerPReff,
        e?.offerImage,
        e?.medcalstoreReff
      ]);

  @override
  bool isValidKey(Object? o) => o is ShopOffersRecord;
}
