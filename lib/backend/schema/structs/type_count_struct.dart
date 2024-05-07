// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypeCountStruct extends FFFirebaseStruct {
  TypeCountStruct({
    int? bugs,
    int? comments,
    int? complain,
    int? meaningless,
    int? request,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _bugs = bugs,
        _comments = comments,
        _complain = complain,
        _meaningless = meaningless,
        _request = request,
        super(firestoreUtilData);

  // "bugs" field.
  int? _bugs;
  int get bugs => _bugs ?? 300;
  set bugs(int? val) => _bugs = val;
  void incrementBugs(int amount) => _bugs = bugs + amount;
  bool hasBugs() => _bugs != null;

  // "comments" field.
  int? _comments;
  int get comments => _comments ?? 2000;
  set comments(int? val) => _comments = val;
  void incrementComments(int amount) => _comments = comments + amount;
  bool hasComments() => _comments != null;

  // "complain" field.
  int? _complain;
  int get complain => _complain ?? 200;
  set complain(int? val) => _complain = val;
  void incrementComplain(int amount) => _complain = complain + amount;
  bool hasComplain() => _complain != null;

  // "meaningless" field.
  int? _meaningless;
  int get meaningless => _meaningless ?? 5000;
  set meaningless(int? val) => _meaningless = val;
  void incrementMeaningless(int amount) => _meaningless = meaningless + amount;
  bool hasMeaningless() => _meaningless != null;

  // "request" field.
  int? _request;
  int get request => _request ?? 50;
  set request(int? val) => _request = val;
  void incrementRequest(int amount) => _request = request + amount;
  bool hasRequest() => _request != null;

  static TypeCountStruct fromMap(Map<String, dynamic> data) => TypeCountStruct(
        bugs: castToType<int>(data['bugs']),
        comments: castToType<int>(data['comments']),
        complain: castToType<int>(data['complain']),
        meaningless: castToType<int>(data['meaningless']),
        request: castToType<int>(data['request']),
      );

  static TypeCountStruct? maybeFromMap(dynamic data) => data is Map
      ? TypeCountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'bugs': _bugs,
        'comments': _comments,
        'complain': _complain,
        'meaningless': _meaningless,
        'request': _request,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bugs': serializeParam(
          _bugs,
          ParamType.int,
        ),
        'comments': serializeParam(
          _comments,
          ParamType.int,
        ),
        'complain': serializeParam(
          _complain,
          ParamType.int,
        ),
        'meaningless': serializeParam(
          _meaningless,
          ParamType.int,
        ),
        'request': serializeParam(
          _request,
          ParamType.int,
        ),
      }.withoutNulls;

  static TypeCountStruct fromSerializableMap(Map<String, dynamic> data) =>
      TypeCountStruct(
        bugs: deserializeParam(
          data['bugs'],
          ParamType.int,
          false,
        ),
        comments: deserializeParam(
          data['comments'],
          ParamType.int,
          false,
        ),
        complain: deserializeParam(
          data['complain'],
          ParamType.int,
          false,
        ),
        meaningless: deserializeParam(
          data['meaningless'],
          ParamType.int,
          false,
        ),
        request: deserializeParam(
          data['request'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TypeCountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TypeCountStruct &&
        bugs == other.bugs &&
        comments == other.comments &&
        complain == other.complain &&
        meaningless == other.meaningless &&
        request == other.request;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([bugs, comments, complain, meaningless, request]);
}

TypeCountStruct createTypeCountStruct({
  int? bugs,
  int? comments,
  int? complain,
  int? meaningless,
  int? request,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TypeCountStruct(
      bugs: bugs,
      comments: comments,
      complain: complain,
      meaningless: meaningless,
      request: request,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TypeCountStruct? updateTypeCountStruct(
  TypeCountStruct? typeCount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    typeCount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTypeCountStructData(
  Map<String, dynamic> firestoreData,
  TypeCountStruct? typeCount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (typeCount == null) {
    return;
  }
  if (typeCount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && typeCount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final typeCountData = getTypeCountFirestoreData(typeCount, forFieldValue);
  final nestedData = typeCountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = typeCount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTypeCountFirestoreData(
  TypeCountStruct? typeCount, [
  bool forFieldValue = false,
]) {
  if (typeCount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(typeCount.toMap());

  // Add any Firestore field values
  typeCount.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTypeCountListFirestoreData(
  List<TypeCountStruct>? typeCounts,
) =>
    typeCounts?.map((e) => getTypeCountFirestoreData(e, true)).toList() ?? [];
