import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductCategoryRecord extends FirestoreRecord {
  ProductCategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Bolus_name" field.
  String? _bolusName;
  String get bolusName => _bolusName ?? '';
  bool hasBolusName() => _bolusName != null;

  // "product_catagory_reff" field.
  DocumentReference? _productCatagoryReff;
  DocumentReference? get productCatagoryReff => _productCatagoryReff;
  bool hasProductCatagoryReff() => _productCatagoryReff != null;

  // "product_catagory_rating" field.
  int? _productCatagoryRating;
  int get productCatagoryRating => _productCatagoryRating ?? 0;
  bool hasProductCatagoryRating() => _productCatagoryRating != null;

  // "product_catagory_discount" field.
  double? _productCatagoryDiscount;
  double get productCatagoryDiscount => _productCatagoryDiscount ?? 0.0;
  bool hasProductCatagoryDiscount() => _productCatagoryDiscount != null;

  // "product_category_Original_price" field.
  double? _productCategoryOriginalPrice;
  double get productCategoryOriginalPrice =>
      _productCategoryOriginalPrice ?? 0.0;
  bool hasProductCategoryOriginalPrice() =>
      _productCategoryOriginalPrice != null;

  // "productcategorydescription" field.
  String? _productcategorydescription;
  String get productcategorydescription => _productcategorydescription ?? '';
  bool hasProductcategorydescription() => _productcategorydescription != null;

  // "productcategoryimage" field.
  String? _productcategoryimage;
  String get productcategoryimage => _productcategoryimage ?? '';
  bool hasProductcategoryimage() => _productcategoryimage != null;

  // "productcategoryname" field.
  String? _productcategoryname;
  String get productcategoryname => _productcategoryname ?? '';
  bool hasProductcategoryname() => _productcategoryname != null;

  // "prodyctcatager_unit" field.
  String? _prodyctcatagerUnit;
  String get prodyctcatagerUnit => _prodyctcatagerUnit ?? '';
  bool hasProdyctcatagerUnit() => _prodyctcatagerUnit != null;

  void _initializeFields() {
    _bolusName = snapshotData['Bolus_name'] as String?;
    _productCatagoryReff =
        snapshotData['product_catagory_reff'] as DocumentReference?;
    _productCatagoryRating =
        castToType<int>(snapshotData['product_catagory_rating']);
    _productCatagoryDiscount =
        castToType<double>(snapshotData['product_catagory_discount']);
    _productCategoryOriginalPrice =
        castToType<double>(snapshotData['product_category_Original_price']);
    _productcategorydescription =
        snapshotData['productcategorydescription'] as String?;
    _productcategoryimage = snapshotData['productcategoryimage'] as String?;
    _productcategoryname = snapshotData['productcategoryname'] as String?;
    _prodyctcatagerUnit = snapshotData['prodyctcatager_unit'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product_category');

  static Stream<ProductCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductCategoryRecord.fromSnapshot(s));

  static Future<ProductCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductCategoryRecord.fromSnapshot(s));

  static ProductCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductCategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductCategoryRecordData({
  String? bolusName,
  DocumentReference? productCatagoryReff,
  int? productCatagoryRating,
  double? productCatagoryDiscount,
  double? productCategoryOriginalPrice,
  String? productcategorydescription,
  String? productcategoryimage,
  String? productcategoryname,
  String? prodyctcatagerUnit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Bolus_name': bolusName,
      'product_catagory_reff': productCatagoryReff,
      'product_catagory_rating': productCatagoryRating,
      'product_catagory_discount': productCatagoryDiscount,
      'product_category_Original_price': productCategoryOriginalPrice,
      'productcategorydescription': productcategorydescription,
      'productcategoryimage': productcategoryimage,
      'productcategoryname': productcategoryname,
      'prodyctcatager_unit': prodyctcatagerUnit,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductCategoryRecordDocumentEquality
    implements Equality<ProductCategoryRecord> {
  const ProductCategoryRecordDocumentEquality();

  @override
  bool equals(ProductCategoryRecord? e1, ProductCategoryRecord? e2) {
    return e1?.bolusName == e2?.bolusName &&
        e1?.productCatagoryReff == e2?.productCatagoryReff &&
        e1?.productCatagoryRating == e2?.productCatagoryRating &&
        e1?.productCatagoryDiscount == e2?.productCatagoryDiscount &&
        e1?.productCategoryOriginalPrice == e2?.productCategoryOriginalPrice &&
        e1?.productcategorydescription == e2?.productcategorydescription &&
        e1?.productcategoryimage == e2?.productcategoryimage &&
        e1?.productcategoryname == e2?.productcategoryname &&
        e1?.prodyctcatagerUnit == e2?.prodyctcatagerUnit;
  }

  @override
  int hash(ProductCategoryRecord? e) => const ListEquality().hash([
        e?.bolusName,
        e?.productCatagoryReff,
        e?.productCatagoryRating,
        e?.productCatagoryDiscount,
        e?.productCategoryOriginalPrice,
        e?.productcategorydescription,
        e?.productcategoryimage,
        e?.productcategoryname,
        e?.prodyctcatagerUnit
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductCategoryRecord;
}
