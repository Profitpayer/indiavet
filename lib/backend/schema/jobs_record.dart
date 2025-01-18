import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    super.reference,
    super.data,
  ) {
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

  // "medicines" field.
  List<String>? _medicines;
  List<String> get medicines => _medicines ?? const [];
  bool hasMedicines() => _medicines != null;

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

  // "typesofmedicines" field.
  String? _typesofmedicines;
  String get typesofmedicines => _typesofmedicines ?? '';
  bool hasTypesofmedicines() => _typesofmedicines != null;

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

  // "typesofmedicine2" field.
  String? _typesofmedicine2;
  String get typesofmedicine2 => _typesofmedicine2 ?? '';
  bool hasTypesofmedicine2() => _typesofmedicine2 != null;

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
    _medicines = getDataList(snapshotData['medicines']);
    _districtDropDown = snapshotData['DistrictDropDown'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _addmedicines = snapshotData['addmedicines'] as String?;
    _typesofmedicines = snapshotData['typesofmedicines'] as String?;
    _districtname = snapshotData['districtname'] as String?;
    _blockname = snapshotData['blockname'] as String?;
    _villagename = snapshotData['villagename'] as String?;
    _petinfoname = snapshotData['petinfoname'] as String?;
    _typesofmedicine2 = snapshotData['typesofmedicine2'] as String?;
    _prescriptionGentsVillage =
        snapshotData['PrescriptionGentsVillage'] as String?;
    _medicinepqty = getDataList(snapshotData['medicinepqty']);
    _appointmentName = snapshotData['AppointmentName'] as String?;
    _appointmentMobile = snapshotData['AppointmentMobile'] as String?;
    _appointmentVill = snapshotData['AppointmentVill'] as String?;
    _appointmentCity = snapshotData['AppointmentCity'] as String?;
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
  String? typesofmedicines,
  String? districtname,
  String? blockname,
  String? villagename,
  String? petinfoname,
  String? typesofmedicine2,
  String? prescriptionGentsVillage,
  String? appointmentName,
  String? appointmentMobile,
  String? appointmentVill,
  String? appointmentCity,
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
      'typesofmedicines': typesofmedicines,
      'districtname': districtname,
      'blockname': blockname,
      'villagename': villagename,
      'petinfoname': petinfoname,
      'typesofmedicine2': typesofmedicine2,
      'PrescriptionGentsVillage': prescriptionGentsVillage,
      'AppointmentName': appointmentName,
      'AppointmentMobile': appointmentMobile,
      'AppointmentVill': appointmentVill,
      'AppointmentCity': appointmentCity,
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
        listEquality.equals(e1?.medicines, e2?.medicines) &&
        e1?.districtDropDown == e2?.districtDropDown &&
        e1?.createdAt == e2?.createdAt &&
        e1?.addmedicines == e2?.addmedicines &&
        e1?.typesofmedicines == e2?.typesofmedicines &&
        e1?.districtname == e2?.districtname &&
        e1?.blockname == e2?.blockname &&
        e1?.villagename == e2?.villagename &&
        e1?.petinfoname == e2?.petinfoname &&
        e1?.typesofmedicine2 == e2?.typesofmedicine2 &&
        e1?.prescriptionGentsVillage == e2?.prescriptionGentsVillage &&
        listEquality.equals(e1?.medicinepqty, e2?.medicinepqty) &&
        e1?.appointmentName == e2?.appointmentName &&
        e1?.appointmentMobile == e2?.appointmentMobile &&
        e1?.appointmentVill == e2?.appointmentVill &&
        e1?.appointmentCity == e2?.appointmentCity;
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
        e?.medicines,
        e?.districtDropDown,
        e?.createdAt,
        e?.addmedicines,
        e?.typesofmedicines,
        e?.districtname,
        e?.blockname,
        e?.villagename,
        e?.petinfoname,
        e?.typesofmedicine2,
        e?.prescriptionGentsVillage,
        e?.medicinepqty,
        e?.appointmentName,
        e?.appointmentMobile,
        e?.appointmentVill,
        e?.appointmentCity
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
