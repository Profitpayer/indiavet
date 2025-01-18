import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "resume_URL" field.
  String? _resumeURL;
  String get resumeURL => _resumeURL ?? '';
  bool hasResumeURL() => _resumeURL != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "bankaccountno" field.
  String? _bankaccountno;
  String get bankaccountno => _bankaccountno ?? '';
  bool hasBankaccountno() => _bankaccountno != null;

  // "ifsc_Code" field.
  String? _ifscCode;
  String get ifscCode => _ifscCode ?? '';
  bool hasIfscCode() => _ifscCode != null;

  // "medicines" field.
  List<String>? _medicines;
  List<String> get medicines => _medicines ?? const [];
  bool hasMedicines() => _medicines != null;

  // "referCode" field.
  String? _referCode;
  String get referCode => _referCode ?? '';
  bool hasReferCode() => _referCode != null;

  // "referUser" field.
  List<DocumentReference>? _referUser;
  List<DocumentReference> get referUser => _referUser ?? const [];
  bool hasReferUser() => _referUser != null;

  // "typeofmedi" field.
  List<String>? _typeofmedi;
  List<String> get typeofmedi => _typeofmedi ?? const [];
  bool hasTypeofmedi() => _typeofmedi != null;

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  bool hasBankName() => _bankName != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "RegistrationNo" field.
  String? _registrationNo;
  String get registrationNo => _registrationNo ?? '';
  bool hasRegistrationNo() => _registrationNo != null;

  // "Postname" field.
  String? _postname;
  String get postname => _postname ?? '';
  bool hasPostname() => _postname != null;

  // "skilled" field.
  List<String>? _skilled;
  List<String> get skilled => _skilled ?? const [];
  bool hasSkilled() => _skilled != null;

  // "BankAccountHoldername" field.
  String? _bankAccountHoldername;
  String get bankAccountHoldername => _bankAccountHoldername ?? '';
  bool hasBankAccountHoldername() => _bankAccountHoldername != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _role = snapshotData['role'] as String?;
    _resumeURL = snapshotData['resume_URL'] as String?;
    _bio = snapshotData['bio'] as String?;
    _skills = getDataList(snapshotData['skills']);
    _experience = snapshotData['experience'] as String?;
    _bankaccountno = snapshotData['bankaccountno'] as String?;
    _ifscCode = snapshotData['ifsc_Code'] as String?;
    _medicines = getDataList(snapshotData['medicines']);
    _referCode = snapshotData['referCode'] as String?;
    _referUser = getDataList(snapshotData['referUser']);
    _typeofmedi = getDataList(snapshotData['typeofmedi']);
    _bankName = snapshotData['bank_name'] as String?;
    _location = snapshotData['location'] as String?;
    _registrationNo = snapshotData['RegistrationNo'] as String?;
    _postname = snapshotData['Postname'] as String?;
    _skilled = getDataList(snapshotData['skilled']);
    _bankAccountHoldername = snapshotData['BankAccountHoldername'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? role,
  String? resumeURL,
  String? bio,
  String? experience,
  String? bankaccountno,
  String? ifscCode,
  String? referCode,
  String? bankName,
  String? location,
  String? registrationNo,
  String? postname,
  String? bankAccountHoldername,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'role': role,
      'resume_URL': resumeURL,
      'bio': bio,
      'experience': experience,
      'bankaccountno': bankaccountno,
      'ifsc_Code': ifscCode,
      'referCode': referCode,
      'bank_name': bankName,
      'location': location,
      'RegistrationNo': registrationNo,
      'Postname': postname,
      'BankAccountHoldername': bankAccountHoldername,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.role == e2?.role &&
        e1?.resumeURL == e2?.resumeURL &&
        e1?.bio == e2?.bio &&
        listEquality.equals(e1?.skills, e2?.skills) &&
        e1?.experience == e2?.experience &&
        e1?.bankaccountno == e2?.bankaccountno &&
        e1?.ifscCode == e2?.ifscCode &&
        listEquality.equals(e1?.medicines, e2?.medicines) &&
        e1?.referCode == e2?.referCode &&
        listEquality.equals(e1?.referUser, e2?.referUser) &&
        listEquality.equals(e1?.typeofmedi, e2?.typeofmedi) &&
        e1?.bankName == e2?.bankName &&
        e1?.location == e2?.location &&
        e1?.registrationNo == e2?.registrationNo &&
        e1?.postname == e2?.postname &&
        listEquality.equals(e1?.skilled, e2?.skilled) &&
        e1?.bankAccountHoldername == e2?.bankAccountHoldername;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.role,
        e?.resumeURL,
        e?.bio,
        e?.skills,
        e?.experience,
        e?.bankaccountno,
        e?.ifscCode,
        e?.medicines,
        e?.referCode,
        e?.referUser,
        e?.typeofmedi,
        e?.bankName,
        e?.location,
        e?.registrationNo,
        e?.postname,
        e?.skilled,
        e?.bankAccountHoldername
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
