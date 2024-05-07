// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsTypeStruct extends FFFirebaseStruct {
  CommentsTypeStruct({
    String? commentString,
    String? userName,
    String? type,
    bool? isComplete,
    DateTime? timecreated,
    String? socialMedia,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _commentString = commentString,
        _userName = userName,
        _type = type,
        _isComplete = isComplete,
        _timecreated = timecreated,
        _socialMedia = socialMedia,
        super(firestoreUtilData);

  // "CommentString" field.
  String? _commentString;
  String get commentString => _commentString ?? '';
  set commentString(String? val) => _commentString = val;
  bool hasCommentString() => _commentString != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "IsComplete" field.
  bool? _isComplete;
  bool get isComplete => _isComplete ?? false;
  set isComplete(bool? val) => _isComplete = val;
  bool hasIsComplete() => _isComplete != null;

  // "timecreated" field.
  DateTime? _timecreated;
  DateTime? get timecreated => _timecreated;
  set timecreated(DateTime? val) => _timecreated = val;
  bool hasTimecreated() => _timecreated != null;

  // "socialMedia" field.
  String? _socialMedia;
  String get socialMedia => _socialMedia ?? '';
  set socialMedia(String? val) => _socialMedia = val;
  bool hasSocialMedia() => _socialMedia != null;

  static CommentsTypeStruct fromMap(Map<String, dynamic> data) =>
      CommentsTypeStruct(
        commentString: data['CommentString'] as String?,
        userName: data['userName'] as String?,
        type: data['type'] as String?,
        isComplete: data['IsComplete'] as bool?,
        timecreated: data['timecreated'] as DateTime?,
        socialMedia: data['socialMedia'] as String?,
      );

  static CommentsTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CommentsTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CommentString': _commentString,
        'userName': _userName,
        'type': _type,
        'IsComplete': _isComplete,
        'timecreated': _timecreated,
        'socialMedia': _socialMedia,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CommentString': serializeParam(
          _commentString,
          ParamType.String,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'IsComplete': serializeParam(
          _isComplete,
          ParamType.bool,
        ),
        'timecreated': serializeParam(
          _timecreated,
          ParamType.DateTime,
        ),
        'socialMedia': serializeParam(
          _socialMedia,
          ParamType.String,
        ),
      }.withoutNulls;

  static CommentsTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommentsTypeStruct(
        commentString: deserializeParam(
          data['CommentString'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        isComplete: deserializeParam(
          data['IsComplete'],
          ParamType.bool,
          false,
        ),
        timecreated: deserializeParam(
          data['timecreated'],
          ParamType.DateTime,
          false,
        ),
        socialMedia: deserializeParam(
          data['socialMedia'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CommentsTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommentsTypeStruct &&
        commentString == other.commentString &&
        userName == other.userName &&
        type == other.type &&
        isComplete == other.isComplete &&
        timecreated == other.timecreated &&
        socialMedia == other.socialMedia;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [commentString, userName, type, isComplete, timecreated, socialMedia]);
}

CommentsTypeStruct createCommentsTypeStruct({
  String? commentString,
  String? userName,
  String? type,
  bool? isComplete,
  DateTime? timecreated,
  String? socialMedia,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CommentsTypeStruct(
      commentString: commentString,
      userName: userName,
      type: type,
      isComplete: isComplete,
      timecreated: timecreated,
      socialMedia: socialMedia,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CommentsTypeStruct? updateCommentsTypeStruct(
  CommentsTypeStruct? commentsType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    commentsType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCommentsTypeStructData(
  Map<String, dynamic> firestoreData,
  CommentsTypeStruct? commentsType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (commentsType == null) {
    return;
  }
  if (commentsType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && commentsType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final commentsTypeData =
      getCommentsTypeFirestoreData(commentsType, forFieldValue);
  final nestedData =
      commentsTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = commentsType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCommentsTypeFirestoreData(
  CommentsTypeStruct? commentsType, [
  bool forFieldValue = false,
]) {
  if (commentsType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(commentsType.toMap());

  // Add any Firestore field values
  commentsType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCommentsTypeListFirestoreData(
  List<CommentsTypeStruct>? commentsTypes,
) =>
    commentsTypes?.map((e) => getCommentsTypeFirestoreData(e, true)).toList() ??
    [];
