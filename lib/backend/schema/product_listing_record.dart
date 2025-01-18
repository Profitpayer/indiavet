import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductListingRecord extends FirestoreRecord {
  ProductListingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "productname" field.
  String? _productname;
  String get productname => _productname ?? '';
  bool hasProductname() => _productname != null;

  // "productcategory" field.
  String? _productcategory;
  String get productcategory => _productcategory ?? '';
  bool hasProductcategory() => _productcategory != null;

  // "productmrp" field.
  String? _productmrp;
  String get productmrp => _productmrp ?? '';
  bool hasProductmrp() => _productmrp != null;

  // "productsale" field.
  String? _productsale;
  String get productsale => _productsale ?? '';
  bool hasProductsale() => _productsale != null;

  // "productdescription" field.
  String? _productdescription;
  String get productdescription => _productdescription ?? '';
  bool hasProductdescription() => _productdescription != null;

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "recruiter_ID" field.
  DocumentReference? _recruiterID;
  DocumentReference? get recruiterID => _recruiterID;
  bool hasRecruiterID() => _recruiterID != null;

  // "product_image" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "product_rating" field.
  int? _productRating;
  int get productRating => _productRating ?? 0;
  bool hasProductRating() => _productRating != null;

  void _initializeFields() {
    _productname = snapshotData['productname'] as String?;
    _productcategory = snapshotData['productcategory'] as String?;
    _productmrp = snapshotData['productmrp'] as String?;
    _productsale = snapshotData['productsale'] as String?;
    _productdescription = snapshotData['productdescription'] as String?;
    _productId = snapshotData['productId'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _recruiterID = snapshotData['recruiter_ID'] as DocumentReference?;
    _productImage = snapshotData['product_image'] as String?;
    _productRating = castToType<int>(snapshotData['product_rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductListing');

  static Stream<ProductListingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductListingRecord.fromSnapshot(s));

  static Future<ProductListingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductListingRecord.fromSnapshot(s));

  static ProductListingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductListingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductListingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductListingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductListingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductListingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductListingRecordData({
  String? productname,
  String? productcategory,
  String? productmrp,
  String? productsale,
  String? productdescription,
  String? productId,
  DateTime? createdAt,
  DocumentReference? recruiterID,
  String? productImage,
  int? productRating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productname': productname,
      'productcategory': productcategory,
      'productmrp': productmrp,
      'productsale': productsale,
      'productdescription': productdescription,
      'productId': productId,
      'created_at': createdAt,
      'recruiter_ID': recruiterID,
      'product_image': productImage,
      'product_rating': productRating,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductListingRecordDocumentEquality
    implements Equality<ProductListingRecord> {
  const ProductListingRecordDocumentEquality();

  @override
  bool equals(ProductListingRecord? e1, ProductListingRecord? e2) {
    return e1?.productname == e2?.productname &&
        e1?.productcategory == e2?.productcategory &&
        e1?.productmrp == e2?.productmrp &&
        e1?.productsale == e2?.productsale &&
        e1?.productdescription == e2?.productdescription &&
        e1?.productId == e2?.productId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.recruiterID == e2?.recruiterID &&
        e1?.productImage == e2?.productImage &&
        e1?.productRating == e2?.productRating;
  }

  @override
  int hash(ProductListingRecord? e) => const ListEquality().hash([
        e?.productname,
        e?.productcategory,
        e?.productmrp,
        e?.productsale,
        e?.productdescription,
        e?.productId,
        e?.createdAt,
        e?.recruiterID,
        e?.productImage,
        e?.productRating
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductListingRecord;
}
