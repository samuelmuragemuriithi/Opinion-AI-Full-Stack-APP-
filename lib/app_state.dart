import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _listofComments = prefs
              .getStringList('ff_listofComments')
              ?.map((x) {
                try {
                  return CommentsTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _listofComments;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_listofTypes')) {
        try {
          final serializedData = prefs.getString('ff_listofTypes') ?? '{}';
          _listofTypes =
              TypesStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CommentsTypeStruct> _listofComments = [];
  List<CommentsTypeStruct> get listofComments => _listofComments;
  set listofComments(List<CommentsTypeStruct> _value) {
    _listofComments = _value;
    prefs.setStringList(
        'ff_listofComments', _value.map((x) => x.serialize()).toList());
  }

  void addToListofComments(CommentsTypeStruct _value) {
    _listofComments.add(_value);
    prefs.setStringList('ff_listofComments',
        _listofComments.map((x) => x.serialize()).toList());
  }

  void removeFromListofComments(CommentsTypeStruct _value) {
    _listofComments.remove(_value);
    prefs.setStringList('ff_listofComments',
        _listofComments.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListofComments(int _index) {
    _listofComments.removeAt(_index);
    prefs.setStringList('ff_listofComments',
        _listofComments.map((x) => x.serialize()).toList());
  }

  void updateListofCommentsAtIndex(
    int _index,
    CommentsTypeStruct Function(CommentsTypeStruct) updateFn,
  ) {
    _listofComments[_index] = updateFn(_listofComments[_index]);
    prefs.setStringList('ff_listofComments',
        _listofComments.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListofComments(int _index, CommentsTypeStruct _value) {
    _listofComments.insert(_index, _value);
    prefs.setStringList('ff_listofComments',
        _listofComments.map((x) => x.serialize()).toList());
  }

  TypesStruct _listofTypes = TypesStruct.fromSerializableMap(jsonDecode(
      '{\"Comment\":\"[\\\"rkif3\\\",\\\"rkif3\\\",\\\"rkif3\\\",\\\"rkif3\\\",\\\"rkif3\\\",\\\"rkif3\\\",\\\"rkif3\\\",\\\"rkif3\\\",\\\"rkif3\\\",\\\"rkif3\\\"]\"}'));
  TypesStruct get listofTypes => _listofTypes;
  set listofTypes(TypesStruct _value) {
    _listofTypes = _value;
    prefs.setString('ff_listofTypes', _value.serialize());
  }

  void updateListofTypesStruct(Function(TypesStruct) updateFn) {
    updateFn(_listofTypes);
    prefs.setString('ff_listofTypes', _listofTypes.serialize());
  }

  List<TypesStruct> _listofType = [
    TypesStruct.fromSerializableMap(jsonDecode(
        '{\"Comment\":\"[\\\"rkif3\\\"]\",\"url\":\"Hello World\"}')),
    TypesStruct.fromSerializableMap(jsonDecode(
        '{\"Comment\":\"[\\\"3et1g\\\"]\",\"url\":\"Hello World\"}')),
    TypesStruct.fromSerializableMap(jsonDecode(
        '{\"Comment\":\"[\\\"3yqs2\\\"]\",\"url\":\"Hello World\"}')),
    TypesStruct.fromSerializableMap(jsonDecode(
        '{\"Comment\":\"[\\\"u2hkj\\\"]\",\"url\":\"Hello World\"}')),
    TypesStruct.fromSerializableMap(
        jsonDecode('{\"Comment\":\"[\\\"1rj11\\\"]\",\"url\":\"Hello World\"}'))
  ];
  List<TypesStruct> get listofType => _listofType;
  set listofType(List<TypesStruct> _value) {
    _listofType = _value;
  }

  void addToListofType(TypesStruct _value) {
    _listofType.add(_value);
  }

  void removeFromListofType(TypesStruct _value) {
    _listofType.remove(_value);
  }

  void removeAtIndexFromListofType(int _index) {
    _listofType.removeAt(_index);
  }

  void updateListofTypeAtIndex(
    int _index,
    TypesStruct Function(TypesStruct) updateFn,
  ) {
    _listofType[_index] = updateFn(_listofType[_index]);
  }

  void insertAtIndexInListofType(int _index, TypesStruct _value) {
    _listofType.insert(_index, _value);
  }

  List<IgCommentsStruct> _igcomments = [];
  List<IgCommentsStruct> get igcomments => _igcomments;
  set igcomments(List<IgCommentsStruct> _value) {
    _igcomments = _value;
  }

  void addToIgcomments(IgCommentsStruct _value) {
    _igcomments.add(_value);
  }

  void removeFromIgcomments(IgCommentsStruct _value) {
    _igcomments.remove(_value);
  }

  void removeAtIndexFromIgcomments(int _index) {
    _igcomments.removeAt(_index);
  }

  void updateIgcommentsAtIndex(
    int _index,
    IgCommentsStruct Function(IgCommentsStruct) updateFn,
  ) {
    _igcomments[_index] = updateFn(_igcomments[_index]);
  }

  void insertAtIndexInIgcomments(int _index, IgCommentsStruct _value) {
    _igcomments.insert(_index, _value);
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
