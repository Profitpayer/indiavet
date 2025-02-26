import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _RegistrationNo =
          await secureStorage.getInt('ff_RegistrationNo') ?? _RegistrationNo;
    });
    await _safeInitAsync(() async {
      _Point = await secureStorage.getInt('ff_Point') ?? _Point;
    });
    await _safeInitAsync(() async {
      _PrescriptionInvoiceNo =
          await secureStorage.getInt('ff_PrescriptionInvoiceNo') ??
              _PrescriptionInvoiceNo;
    });
    await _safeInitAsync(() async {
      _SRNO = (await secureStorage.getStringList('ff_SRNO'))
              ?.map(int.parse)
              .toList() ??
          _SRNO;
    });
    await _safeInitAsync(() async {
      _prooffferCode = await secureStorage.getStringList('ff_prooffferCode') ??
          _prooffferCode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _SelectedPanel = '';
  String get SelectedPanel => _SelectedPanel;
  set SelectedPanel(String value) {
    _SelectedPanel = value;
  }

  List<String> _City = [];
  List<String> get City => _City;
  set City(List<String> value) {
    _City = value;
  }

  void addToCity(String value) {
    City.add(value);
  }

  void removeFromCity(String value) {
    City.remove(value);
  }

  void removeAtIndexFromCity(int index) {
    City.removeAt(index);
  }

  void updateCityAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    City[index] = updateFn(_City[index]);
  }

  void insertAtIndexInCity(int index, String value) {
    City.insert(index, value);
  }

  int _PrescriptionOrder = 0;
  int get PrescriptionOrder => _PrescriptionOrder;
  set PrescriptionOrder(int value) {
    _PrescriptionOrder = value;
  }

  int _RegistrationNo = 0;
  int get RegistrationNo => _RegistrationNo;
  set RegistrationNo(int value) {
    _RegistrationNo = value;
    secureStorage.setInt('ff_RegistrationNo', value);
  }

  void deleteRegistrationNo() {
    secureStorage.delete(key: 'ff_RegistrationNo');
  }

  int _Point = 0;
  int get Point => _Point;
  set Point(int value) {
    _Point = value;
    secureStorage.setInt('ff_Point', value);
  }

  void deletePoint() {
    secureStorage.delete(key: 'ff_Point');
  }

  int _PrescriptionInvoiceNo = 0;
  int get PrescriptionInvoiceNo => _PrescriptionInvoiceNo;
  set PrescriptionInvoiceNo(int value) {
    _PrescriptionInvoiceNo = value;
    secureStorage.setInt('ff_PrescriptionInvoiceNo', value);
  }

  void deletePrescriptionInvoiceNo() {
    secureStorage.delete(key: 'ff_PrescriptionInvoiceNo');
  }

  List<int> _SRNO = [];
  List<int> get SRNO => _SRNO;
  set SRNO(List<int> value) {
    _SRNO = value;
    secureStorage.setStringList(
        'ff_SRNO', value.map((x) => x.toString()).toList());
  }

  void deleteSRNO() {
    secureStorage.delete(key: 'ff_SRNO');
  }

  void addToSRNO(int value) {
    SRNO.add(value);
    secureStorage.setStringList(
        'ff_SRNO', _SRNO.map((x) => x.toString()).toList());
  }

  void removeFromSRNO(int value) {
    SRNO.remove(value);
    secureStorage.setStringList(
        'ff_SRNO', _SRNO.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromSRNO(int index) {
    SRNO.removeAt(index);
    secureStorage.setStringList(
        'ff_SRNO', _SRNO.map((x) => x.toString()).toList());
  }

  void updateSRNOAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    SRNO[index] = updateFn(_SRNO[index]);
    secureStorage.setStringList(
        'ff_SRNO', _SRNO.map((x) => x.toString()).toList());
  }

  void insertAtIndexInSRNO(int index, int value) {
    SRNO.insert(index, value);
    secureStorage.setStringList(
        'ff_SRNO', _SRNO.map((x) => x.toString()).toList());
  }

  List<String> _prooffferCode = [];
  List<String> get prooffferCode => _prooffferCode;
  set prooffferCode(List<String> value) {
    _prooffferCode = value;
    secureStorage.setStringList('ff_prooffferCode', value);
  }

  void deleteProoffferCode() {
    secureStorage.delete(key: 'ff_prooffferCode');
  }

  void addToProoffferCode(String value) {
    prooffferCode.add(value);
    secureStorage.setStringList('ff_prooffferCode', _prooffferCode);
  }

  void removeFromProoffferCode(String value) {
    prooffferCode.remove(value);
    secureStorage.setStringList('ff_prooffferCode', _prooffferCode);
  }

  void removeAtIndexFromProoffferCode(int index) {
    prooffferCode.removeAt(index);
    secureStorage.setStringList('ff_prooffferCode', _prooffferCode);
  }

  void updateProoffferCodeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    prooffferCode[index] = updateFn(_prooffferCode[index]);
    secureStorage.setStringList('ff_prooffferCode', _prooffferCode);
  }

  void insertAtIndexInProoffferCode(int index, String value) {
    prooffferCode.insert(index, value);
    secureStorage.setStringList('ff_prooffferCode', _prooffferCode);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
