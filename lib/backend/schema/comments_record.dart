import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ylist" field.
  int? _ylist;
  int get ylist => _ylist ?? 0;
  bool hasYlist() => _ylist != null;

  // "xone" field.
  int? _xone;
  int get xone => _xone ?? 0;
  bool hasXone() => _xone != null;

  // "xtwo" field.
  int? _xtwo;
  int get xtwo => _xtwo ?? 0;
  bool hasXtwo() => _xtwo != null;

  void _initializeFields() {
    _ylist = castToType<int>(snapshotData['ylist']);
    _xone = castToType<int>(snapshotData['xone']);
    _xtwo = castToType<int>(snapshotData['xtwo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  int? ylist,
  int? xone,
  int? xtwo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ylist': ylist,
      'xone': xone,
      'xtwo': xtwo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.ylist == e2?.ylist &&
        e1?.xone == e2?.xone &&
        e1?.xtwo == e2?.xtwo;
  }

  @override
  int hash(CommentsRecord? e) =>
      const ListEquality().hash([e?.ylist, e?.xone, e?.xtwo]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
