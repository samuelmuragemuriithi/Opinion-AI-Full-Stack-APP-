import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsRecord extends FirestoreRecord {
  ResultsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Bug" field.
  int? _bug;
  int get bug => _bug ?? 0;
  bool hasBug() => _bug != null;

  // "requests" field.
  int? _requests;
  int get requests => _requests ?? 0;
  bool hasRequests() => _requests != null;

  // "complaints" field.
  int? _complaints;
  int get complaints => _complaints ?? 0;
  bool hasComplaints() => _complaints != null;

  // "meaningless" field.
  int? _meaningless;
  int get meaningless => _meaningless ?? 0;
  bool hasMeaningless() => _meaningless != null;

  // "comments" field.
  int? _comments;
  int get comments => _comments ?? 0;
  bool hasComments() => _comments != null;

  void _initializeFields() {
    _bug = castToType<int>(snapshotData['Bug']);
    _requests = castToType<int>(snapshotData['requests']);
    _complaints = castToType<int>(snapshotData['complaints']);
    _meaningless = castToType<int>(snapshotData['meaningless']);
    _comments = castToType<int>(snapshotData['comments']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('results');

  static Stream<ResultsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResultsRecord.fromSnapshot(s));

  static Future<ResultsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResultsRecord.fromSnapshot(s));

  static ResultsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultsRecordData({
  int? bug,
  int? requests,
  int? complaints,
  int? meaningless,
  int? comments,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Bug': bug,
      'requests': requests,
      'complaints': complaints,
      'meaningless': meaningless,
      'comments': comments,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResultsRecordDocumentEquality implements Equality<ResultsRecord> {
  const ResultsRecordDocumentEquality();

  @override
  bool equals(ResultsRecord? e1, ResultsRecord? e2) {
    return e1?.bug == e2?.bug &&
        e1?.requests == e2?.requests &&
        e1?.complaints == e2?.complaints &&
        e1?.meaningless == e2?.meaningless &&
        e1?.comments == e2?.comments;
  }

  @override
  int hash(ResultsRecord? e) => const ListEquality()
      .hash([e?.bug, e?.requests, e?.complaints, e?.meaningless, e?.comments]);

  @override
  bool isValidKey(Object? o) => o is ResultsRecord;
}
