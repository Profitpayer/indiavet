import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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

  String _RegistrationNo = '';
  String get RegistrationNo => _RegistrationNo;
  set RegistrationNo(String value) {
    _RegistrationNo = value;
  }
}
