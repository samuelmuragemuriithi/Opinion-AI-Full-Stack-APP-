import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentTestRecord extends FirestoreRecord {
  CommentTestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "test" field.
  String? _test;
  String get test => _test ?? '';
  bool hasTest() => _test != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _test = snapshotData['test'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CommentTest');

  static Stream<CommentTestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentTestRecord.fromSnapshot(s));

  static Future<CommentTestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentTestRecord.fromSnapshot(s));

  static CommentTestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentTestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentTestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentTestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentTestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentTestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentTestRecordData({
  String? email,
  String? test,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'test': test,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentTestRecordDocumentEquality implements Equality<CommentTestRecord> {
  const CommentTestRecordDocumentEquality();

  @override
  bool equals(CommentTestRecord? e1, CommentTestRecord? e2) {
    return e1?.email == e2?.email && e1?.test == e2?.test;
  }

  @override
  int hash(CommentTestRecord? e) =>
      const ListEquality().hash([e?.email, e?.test]);

  @override
  bool isValidKey(Object? o) => o is CommentTestRecord;
}
