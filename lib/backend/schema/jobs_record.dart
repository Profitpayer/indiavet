import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "salary" field.
  String? _salary;
  String get salary => _salary ?? '';
  bool hasSalary() => _salary != null;

  // "job_type" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  bool hasJobType() => _jobType != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "job_description" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "company_logo" field.
  String? _companyLogo;
  String get companyLogo => _companyLogo ?? '';
  bool hasCompanyLogo() => _companyLogo != null;

  // "company_website_URL" field.
  String? _companyWebsiteURL;
  String get companyWebsiteURL => _companyWebsiteURL ?? '';
  bool hasCompanyWebsiteURL() => _companyWebsiteURL != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  // "recruiter_ID" field.
  DocumentReference? _recruiterID;
  DocumentReference? get recruiterID => _recruiterID;
  bool hasRecruiterID() => _recruiterID != null;

  // "PatientName" field.
  String? _patientName;
  String get patientName => _patientName ?? '';
  bool hasPatientName() => _patientName != null;

  // "Patientmobile" field.
  String? _patientmobile;
  String get patientmobile => _patientmobile ?? '';
  bool hasPatientmobile() => _patientmobile != null;

  // "DistrictDropDown" field.
  String? _districtDropDown;
  String get districtDropDown => _districtDropDown ?? '';
  bool hasDistrictDropDown() => _districtDropDown != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "addmedicines" field.
  String? _addmedicines;
  String get addmedicines => _addmedicines ?? '';
  bool hasAddmedicines() => _addmedicines != null;

  // "districtname" field.
  String? _districtname;
  String get districtname => _districtname ?? '';
  bool hasDistrictname() => _districtname != null;

  // "blockname" field.
  String? _blockname;
  String get blockname => _blockname ?? '';
  bool hasBlockname() => _blockname != null;

  // "villagename" field.
  String? _villagename;
  String get villagename => _villagename ?? '';
  bool hasVillagename() => _villagename != null;

  // "petinfoname" field.
  String? _petinfoname;
  String get petinfoname => _petinfoname ?? '';
  bool hasPetinfoname() => _petinfoname != null;

  // "PrescriptionGentsVillage" field.
  String? _prescriptionGentsVillage;
  String get prescriptionGentsVillage => _prescriptionGentsVillage ?? '';
  bool hasPrescriptionGentsVillage() => _prescriptionGentsVillage != null;

  // "medicinepqty" field.
  List<String>? _medicinepqty;
  List<String> get medicinepqty => _medicinepqty ?? const [];
  bool hasMedicinepqty() => _medicinepqty != null;

  // "AppointmentName" field.
  String? _appointmentName;
  String get appointmentName => _appointmentName ?? '';
  bool hasAppointmentName() => _appointmentName != null;

  // "AppointmentMobile" field.
  String? _appointmentMobile;
  String get appointmentMobile => _appointmentMobile ?? '';
  bool hasAppointmentMobile() => _appointmentMobile != null;

  // "AppointmentVill" field.
  String? _appointmentVill;
  String get appointmentVill => _appointmentVill ?? '';
  bool hasAppointmentVill() => _appointmentVill != null;

  // "AppointmentCity" field.
  String? _appointmentCity;
  String get appointmentCity => _appointmentCity ?? '';
  bool hasAppointmentCity() => _appointmentCity != null;

  // "pettypes" field.
  String? _pettypes;
  String get pettypes => _pettypes ?? '';
  bool hasPettypes() => _pettypes != null;

  // "doctortypes" field.
  String? _doctortypes;
  String get doctortypes => _doctortypes ?? '';
  bool hasDoctortypes() => _doctortypes != null;

  // "typeofAnimales" field.
  String? _typeofAnimales;
  String get typeofAnimales => _typeofAnimales ?? '';
  bool hasTypeofAnimales() => _typeofAnimales != null;

  // "typeofDoctors" field.
  String? _typeofDoctors;
  String get typeofDoctors => _typeofDoctors ?? '';
  bool hasTypeofDoctors() => _typeofDoctors != null;

  // "typesofmedicine2" field.
  String? _typesofmedicine2;
  String get typesofmedicine2 => _typesofmedicine2 ?? '';
  bool hasTypesofmedicine2() => _typesofmedicine2 != null;

  // "medictimeing" field.
  List<String>? _medictimeing;
  List<String> get medictimeing => _medictimeing ?? const [];
  bool hasMedictimeing() => _medictimeing != null;

  // "uploadprescription" field.
  String? _uploadprescription;
  String get uploadprescription => _uploadprescription ?? '';
  bool hasUploadprescription() => _uploadprescription != null;

  // "prescriptionid" field.
  DocumentReference? _prescriptionid;
  DocumentReference? get prescriptionid => _prescriptionid;
  bool hasPrescriptionid() => _prescriptionid != null;

  // "broadcasttitle" field.
  String? _broadcasttitle;
  String get broadcasttitle => _broadcasttitle ?? '';
  bool hasBroadcasttitle() => _broadcasttitle != null;

  // "broadcastdesc" field.
  String? _broadcastdesc;
  String get broadcastdesc => _broadcastdesc ?? '';
  bool hasBroadcastdesc() => _broadcastdesc != null;

  // "broadcastImg" field.
  String? _broadcastImg;
  String get broadcastImg => _broadcastImg ?? '';
  bool hasBroadcastImg() => _broadcastImg != null;

  // "broadcasttype" field.
  String? _broadcasttype;
  String get broadcasttype => _broadcasttype ?? '';
  bool hasBroadcasttype() => _broadcasttype != null;

  // "typesofmedicine" field.
  List<String>? _typesofmedicine;
  List<String> get typesofmedicine => _typesofmedicine ?? const [];
  bool hasTypesofmedicine() => _typesofmedicine != null;

  // "medicineName" field.
  List<String>? _medicineName;
  List<String> get medicineName => _medicineName ?? const [];
  bool hasMedicineName() => _medicineName != null;

  // "PrescriptionInvoiceNo" field.
  int? _prescriptionInvoiceNo;
  int get prescriptionInvoiceNo => _prescriptionInvoiceNo ?? 0;
  bool hasPrescriptionInvoiceNo() => _prescriptionInvoiceNo != null;

  // "SRNO" field.
  List<int>? _srno;
  List<int> get srno => _srno ?? const [];
  bool hasSrno() => _srno != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _experience = snapshotData['experience'] as String?;
    _salary = snapshotData['salary'] as String?;
    _jobType = snapshotData['job_type'] as String?;
    _location = snapshotData['location'] as String?;
    _jobDescription = snapshotData['job_description'] as String?;
    _companyName = snapshotData['company_name'] as String?;
    _companyLogo = snapshotData['company_logo'] as String?;
    _companyWebsiteURL = snapshotData['company_website_URL'] as String?;
    _skills = getDataList(snapshotData['skills']);
    _recruiterID = snapshotData['recruiter_ID'] as DocumentReference?;
    _patientName = snapshotData['PatientName'] as String?;
    _patientmobile = snapshotData['Patientmobile'] as String?;
    _districtDropDown = snapshotData['DistrictDropDown'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _addmedicines = snapshotData['addmedicines'] as String?;
    _districtname = snapshotData['districtname'] as String?;
    _blockname = snapshotData['blockname'] as String?;
    _villagename = snapshotData['villagename'] as String?;
    _petinfoname = snapshotData['petinfoname'] as String?;
    _prescriptionGentsVillage =
        snapshotData['PrescriptionGentsVillage'] as String?;
    _medicinepqty = getDataList(snapshotData['medicinepqty']);
    _appointmentName = snapshotData['AppointmentName'] as String?;
    _appointmentMobile = snapshotData['AppointmentMobile'] as String?;
    _appointmentVill = snapshotData['AppointmentVill'] as String?;
    _appointmentCity = snapshotData['AppointmentCity'] as String?;
    _pettypes = snapshotData['pettypes'] as String?;
    _doctortypes = snapshotData['doctortypes'] as String?;
    _typeofAnimales = snapshotData['typeofAnimales'] as String?;
    _typeofDoctors = snapshotData['typeofDoctors'] as String?;
    _typesofmedicine2 = snapshotData['typesofmedicine2'] as String?;
    _medictimeing = getDataList(snapshotData['medictimeing']);
    _uploadprescription = snapshotData['uploadprescription'] as String?;
    _prescriptionid = snapshotData['prescriptionid'] as DocumentReference?;
    _broadcasttitle = snapshotData['broadcasttitle'] as String?;
    _broadcastdesc = snapshotData['broadcastdesc'] as String?;
    _broadcastImg = snapshotData['broadcastImg'] as String?;
    _broadcasttype = snapshotData['broadcasttype'] as String?;
    _typesofmedicine = getDataList(snapshotData['typesofmedicine']);
    _medicineName = getDataList(snapshotData['medicineName']);
    _prescriptionInvoiceNo =
        castToType<int>(snapshotData['PrescriptionInvoiceNo']);
    _srno = getDataList(snapshotData['SRNO']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? title,
  String? experience,
  String? salary,
  String? jobType,
  String? location,
  String? jobDescription,
  String? companyName,
  String? companyLogo,
  String? companyWebsiteURL,
  DocumentReference? recruiterID,
  String? patientName,
  String? patientmobile,
  String? districtDropDown,
  DateTime? createdAt,
  String? addmedicines,
  String? districtname,
  String? blockname,
  String? villagename,
  String? petinfoname,
  String? prescriptionGentsVillage,
  String? appointmentName,
  String? appointmentMobile,
  String? appointmentVill,
  String? appointmentCity,
  String? pettypes,
  String? doctortypes,
  String? typeofAnimales,
  String? typeofDoctors,
  String? typesofmedicine2,
  String? uploadprescription,
  DocumentReference? prescriptionid,
  String? broadcasttitle,
  String? broadcastdesc,
  String? broadcastImg,
  String? broadcasttype,
  int? prescriptionInvoiceNo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'experience': experience,
      'salary': salary,
      'job_type': jobType,
      'location': location,
      'job_description': jobDescription,
      'company_name': companyName,
      'company_logo': companyLogo,
      'company_website_URL': companyWebsiteURL,
      'recruiter_ID': recruiterID,
      'PatientName': patientName,
      'Patientmobile': patientmobile,
      'DistrictDropDown': districtDropDown,
      'created_at': createdAt,
      'addmedicines': addmedicines,
      'districtname': districtname,
      'blockname': blockname,
      'villagename': villagename,
      'petinfoname': petinfoname,
      'PrescriptionGentsVillage': prescriptionGentsVillage,
      'AppointmentName': appointmentName,
      'AppointmentMobile': appointmentMobile,
      'AppointmentVill': appointmentVill,
      'AppointmentCity': appointmentCity,
      'pettypes': pettypes,
      'doctortypes': doctortypes,
      'typeofAnimales': typeofAnimales,
      'typeofDoctors': typeofDoctors,
      'typesofmedicine2': typesofmedicine2,
      'uploadprescription': uploadprescription,
      'prescriptionid': prescriptionid,
      'broadcasttitle': broadcasttitle,
      'broadcastdesc': broadcastdesc,
      'broadcastImg': broadcastImg,
      'broadcasttype': broadcasttype,
      'PrescriptionInvoiceNo': prescriptionInvoiceNo,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.experience == e2?.experience &&
        e1?.salary == e2?.salary &&
        e1?.jobType == e2?.jobType &&
        e1?.location == e2?.location &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.companyName == e2?.companyName &&
        e1?.companyLogo == e2?.companyLogo &&
        e1?.companyWebsiteURL == e2?.companyWebsiteURL &&
        listEquality.equals(e1?.skills, e2?.skills) &&
        e1?.recruiterID == e2?.recruiterID &&
        e1?.patientName == e2?.patientName &&
        e1?.patientmobile == e2?.patientmobile &&
        e1?.districtDropDown == e2?.districtDropDown &&
        e1?.createdAt == e2?.createdAt &&
        e1?.addmedicines == e2?.addmedicines &&
        e1?.districtname == e2?.districtname &&
        e1?.blockname == e2?.blockname &&
        e1?.villagename == e2?.villagename &&
        e1?.petinfoname == e2?.petinfoname &&
        e1?.prescriptionGentsVillage == e2?.prescriptionGentsVillage &&
        listEquality.equals(e1?.medicinepqty, e2?.medicinepqty) &&
        e1?.appointmentName == e2?.appointmentName &&
        e1?.appointmentMobile == e2?.appointmentMobile &&
        e1?.appointmentVill == e2?.appointmentVill &&
        e1?.appointmentCity == e2?.appointmentCity &&
        e1?.pettypes == e2?.pettypes &&
        e1?.doctortypes == e2?.doctortypes &&
        e1?.typeofAnimales == e2?.typeofAnimales &&
        e1?.typeofDoctors == e2?.typeofDoctors &&
        e1?.typesofmedicine2 == e2?.typesofmedicine2 &&
        listEquality.equals(e1?.medictimeing, e2?.medictimeing) &&
        e1?.uploadprescription == e2?.uploadprescription &&
        e1?.prescriptionid == e2?.prescriptionid &&
        e1?.broadcasttitle == e2?.broadcasttitle &&
        e1?.broadcastdesc == e2?.broadcastdesc &&
        e1?.broadcastImg == e2?.broadcastImg &&
        e1?.broadcasttype == e2?.broadcasttype &&
        listEquality.equals(e1?.typesofmedicine, e2?.typesofmedicine) &&
        listEquality.equals(e1?.medicineName, e2?.medicineName) &&
        e1?.prescriptionInvoiceNo == e2?.prescriptionInvoiceNo &&
        listEquality.equals(e1?.srno, e2?.srno);
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.experience,
        e?.salary,
        e?.jobType,
        e?.location,
        e?.jobDescription,
        e?.companyName,
        e?.companyLogo,
        e?.companyWebsiteURL,
        e?.skills,
        e?.recruiterID,
        e?.patientName,
        e?.patientmobile,
        e?.districtDropDown,
        e?.createdAt,
        e?.addmedicines,
        e?.districtname,
        e?.blockname,
        e?.villagename,
        e?.petinfoname,
        e?.prescriptionGentsVillage,
        e?.medicinepqty,
        e?.appointmentName,
        e?.appointmentMobile,
        e?.appointmentVill,
        e?.appointmentCity,
        e?.pettypes,
        e?.doctortypes,
        e?.typeofAnimales,
        e?.typeofDoctors,
        e?.typesofmedicine2,
        e?.medictimeing,
        e?.uploadprescription,
        e?.prescriptionid,
        e?.broadcasttitle,
        e?.broadcastdesc,
        e?.broadcastImg,
        e?.broadcasttype,
        e?.typesofmedicine,
        e?.medicineName,
        e?.prescriptionInvoiceNo,
        e?.srno
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
