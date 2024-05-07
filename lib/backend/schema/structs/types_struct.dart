// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypesStruct extends FFFirebaseStruct {
  TypesStruct({
    List<CommentTypes>? comment,
    String? url,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _comment = comment,
        _url = url,
        super(firestoreUtilData);

  // "Comment" field.
  List<CommentTypes>? _comment;
  List<CommentTypes> get comment => _comment ?? const [];
  set comment(List<CommentTypes>? val) => _comment = val;
  void updateComment(Function(List<CommentTypes>) updateFn) =>
      updateFn(_comment ??= []);
  bool hasComment() => _comment != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  static TypesStruct fromMap(Map<String, dynamic> data) => TypesStruct(
        comment: getEnumList<CommentTypes>(data['Comment']),
        url: data['url'] as String?,
      );

  static TypesStruct? maybeFromMap(dynamic data) =>
      data is Map ? TypesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Comment': _comment?.map((e) => e.serialize()).toList(),
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Comment': serializeParam(
          _comment,
          ParamType.Enum,
          true,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static TypesStruct fromSerializableMap(Map<String, dynamic> data) =>
      TypesStruct(
        comment: deserializeParam<CommentTypes>(
          data['Comment'],
          ParamType.Enum,
          true,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TypesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TypesStruct &&
        listEquality.equals(comment, other.comment) &&
        url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([comment, url]);
}

TypesStruct createTypesStruct({
  String? url,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TypesStruct(
      url: url,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TypesStruct? updateTypesStruct(
  TypesStruct? types, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    types
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTypesStructData(
  Map<String, dynamic> firestoreData,
  TypesStruct? types,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (types == null) {
    return;
  }
  if (types.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && types.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final typesData = getTypesFirestoreData(types, forFieldValue);
  final nestedData = typesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = types.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTypesFirestoreData(
  TypesStruct? types, [
  bool forFieldValue = false,
]) {
  if (types == null) {
    return {};
  }
  final firestoreData = mapToFirestore(types.toMap());

  // Add any Firestore field values
  types.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTypesListFirestoreData(
  List<TypesStruct>? typess,
) =>
    typess?.map((e) => getTypesFirestoreData(e, true)).toList() ?? [];
