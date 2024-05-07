// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IgCommentsStruct extends FFFirebaseStruct {
  IgCommentsStruct({
    String? caption,
    String? id,
    String? mediaType,
    String? mediaUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _caption = caption,
        _id = id,
        _mediaType = mediaType,
        _mediaUrl = mediaUrl,
        super(firestoreUtilData);

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  set caption(String? val) => _caption = val;
  bool hasCaption() => _caption != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "media_type" field.
  String? _mediaType;
  String get mediaType => _mediaType ?? '';
  set mediaType(String? val) => _mediaType = val;
  bool hasMediaType() => _mediaType != null;

  // "media_url" field.
  String? _mediaUrl;
  String get mediaUrl => _mediaUrl ?? '';
  set mediaUrl(String? val) => _mediaUrl = val;
  bool hasMediaUrl() => _mediaUrl != null;

  static IgCommentsStruct fromMap(Map<String, dynamic> data) =>
      IgCommentsStruct(
        caption: data['caption'] as String?,
        id: data['id'] as String?,
        mediaType: data['media_type'] as String?,
        mediaUrl: data['media_url'] as String?,
      );

  static IgCommentsStruct? maybeFromMap(dynamic data) => data is Map
      ? IgCommentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'caption': _caption,
        'id': _id,
        'media_type': _mediaType,
        'media_url': _mediaUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'caption': serializeParam(
          _caption,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'media_type': serializeParam(
          _mediaType,
          ParamType.String,
        ),
        'media_url': serializeParam(
          _mediaUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static IgCommentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      IgCommentsStruct(
        caption: deserializeParam(
          data['caption'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        mediaType: deserializeParam(
          data['media_type'],
          ParamType.String,
          false,
        ),
        mediaUrl: deserializeParam(
          data['media_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IgCommentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IgCommentsStruct &&
        caption == other.caption &&
        id == other.id &&
        mediaType == other.mediaType &&
        mediaUrl == other.mediaUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([caption, id, mediaType, mediaUrl]);
}

IgCommentsStruct createIgCommentsStruct({
  String? caption,
  String? id,
  String? mediaType,
  String? mediaUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IgCommentsStruct(
      caption: caption,
      id: id,
      mediaType: mediaType,
      mediaUrl: mediaUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IgCommentsStruct? updateIgCommentsStruct(
  IgCommentsStruct? igComments, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    igComments
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIgCommentsStructData(
  Map<String, dynamic> firestoreData,
  IgCommentsStruct? igComments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (igComments == null) {
    return;
  }
  if (igComments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && igComments.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final igCommentsData = getIgCommentsFirestoreData(igComments, forFieldValue);
  final nestedData = igCommentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = igComments.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIgCommentsFirestoreData(
  IgCommentsStruct? igComments, [
  bool forFieldValue = false,
]) {
  if (igComments == null) {
    return {};
  }
  final firestoreData = mapToFirestore(igComments.toMap());

  // Add any Firestore field values
  igComments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIgCommentsListFirestoreData(
  List<IgCommentsStruct>? igCommentss,
) =>
    igCommentss?.map((e) => getIgCommentsFirestoreData(e, true)).toList() ?? [];
