import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductListingRecord extends FirestoreRecord {
  ProductListingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "productdescription" field.
  String? _productdescription;
  String get productdescription => _productdescription ?? '';
  bool hasProductdescription() => _productdescription != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "recruiter_ID" field.
  DocumentReference? _recruiterID;
  DocumentReference? get recruiterID => _recruiterID;
  bool hasRecruiterID() => _recruiterID != null;

  // "product_rating" field.
  int? _productRating;
  int get productRating => _productRating ?? 0;
  bool hasProductRating() => _productRating != null;

  // "HSNNO" field.
  String? _hsnno;
  String get hsnno => _hsnno ?? '';
  bool hasHsnno() => _hsnno != null;

  // "BatchNo" field.
  String? _batchNo;
  String get batchNo => _batchNo ?? '';
  bool hasBatchNo() => _batchNo != null;

  // "mfgdate" field.
  DateTime? _mfgdate;
  DateTime? get mfgdate => _mfgdate;
  bool hasMfgdate() => _mfgdate != null;

  // "expdate" field.
  DateTime? _expdate;
  DateTime? get expdate => _expdate;
  bool hasExpdate() => _expdate != null;

  // "prodqty" field.
  int? _prodqty;
  int get prodqty => _prodqty ?? 0;
  bool hasProdqty() => _prodqty != null;

  // "productimage" field.
  String? _productimage;
  String get productimage => _productimage ?? '';
  bool hasProductimage() => _productimage != null;

  // "PItemCode" field.
  List<String>? _pItemCode;
  List<String> get pItemCode => _pItemCode ?? const [];
  bool hasPItemCode() => _pItemCode != null;

  // "productsale" field.
  List<String>? _productsale;
  List<String> get productsale => _productsale ?? const [];
  bool hasProductsale() => _productsale != null;

  // "prooffercode" field.
  List<String>? _prooffercode;
  List<String> get prooffercode => _prooffercode ?? const [];
  bool hasProoffercode() => _prooffercode != null;

  void _initializeFields() {
    _productname = snapshotData['productname'] as String?;
    _productcategory = snapshotData['productcategory'] as String?;
    _productmrp = snapshotData['productmrp'] as String?;
    _productdescription = snapshotData['productdescription'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _recruiterID = snapshotData['recruiter_ID'] as DocumentReference?;
    _productRating = castToType<int>(snapshotData['product_rating']);
    _hsnno = snapshotData['HSNNO'] as String?;
    _batchNo = snapshotData['BatchNo'] as String?;
    _mfgdate = snapshotData['mfgdate'] as DateTime?;
    _expdate = snapshotData['expdate'] as DateTime?;
    _prodqty = castToType<int>(snapshotData['prodqty']);
    _productimage = snapshotData['productimage'] as String?;
    _pItemCode = getDataList(snapshotData['PItemCode']);
    _productsale = getDataList(snapshotData['productsale']);
    _prooffercode = getDataList(snapshotData['prooffercode']);
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
  String? productdescription,
  DateTime? createdAt,
  DocumentReference? recruiterID,
  int? productRating,
  String? hsnno,
  String? batchNo,
  DateTime? mfgdate,
  DateTime? expdate,
  int? prodqty,
  String? productimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productname': productname,
      'productcategory': productcategory,
      'productmrp': productmrp,
      'productdescription': productdescription,
      'created_at': createdAt,
      'recruiter_ID': recruiterID,
      'product_rating': productRating,
      'HSNNO': hsnno,
      'BatchNo': batchNo,
      'mfgdate': mfgdate,
      'expdate': expdate,
      'prodqty': prodqty,
      'productimage': productimage,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductListingRecordDocumentEquality
    implements Equality<ProductListingRecord> {
  const ProductListingRecordDocumentEquality();

  @override
  bool equals(ProductListingRecord? e1, ProductListingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.productname == e2?.productname &&
        e1?.productcategory == e2?.productcategory &&
        e1?.productmrp == e2?.productmrp &&
        e1?.productdescription == e2?.productdescription &&
        e1?.createdAt == e2?.createdAt &&
        e1?.recruiterID == e2?.recruiterID &&
        e1?.productRating == e2?.productRating &&
        e1?.hsnno == e2?.hsnno &&
        e1?.batchNo == e2?.batchNo &&
        e1?.mfgdate == e2?.mfgdate &&
        e1?.expdate == e2?.expdate &&
        e1?.prodqty == e2?.prodqty &&
        e1?.productimage == e2?.productimage &&
        listEquality.equals(e1?.pItemCode, e2?.pItemCode) &&
        listEquality.equals(e1?.productsale, e2?.productsale) &&
        listEquality.equals(e1?.prooffercode, e2?.prooffercode);
  }

  @override
  int hash(ProductListingRecord? e) => const ListEquality().hash([
        e?.productname,
        e?.productcategory,
        e?.productmrp,
        e?.productdescription,
        e?.createdAt,
        e?.recruiterID,
        e?.productRating,
        e?.hsnno,
        e?.batchNo,
        e?.mfgdate,
        e?.expdate,
        e?.prodqty,
        e?.productimage,
        e?.pItemCode,
        e?.productsale,
        e?.prooffercode
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductListingRecord;
}
