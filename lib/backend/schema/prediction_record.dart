import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PredictionRecord extends FirestoreRecord {
  PredictionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _text = snapshotData['text'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prediction');

  static Stream<PredictionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PredictionRecord.fromSnapshot(s));

  static Future<PredictionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PredictionRecord.fromSnapshot(s));

  static PredictionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PredictionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PredictionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PredictionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PredictionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PredictionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPredictionRecordData({
  String? category,
  String? text,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'text': text,
    }.withoutNulls,
  );

  return firestoreData;
}

class PredictionRecordDocumentEquality implements Equality<PredictionRecord> {
  const PredictionRecordDocumentEquality();

  @override
  bool equals(PredictionRecord? e1, PredictionRecord? e2) {
    return e1?.category == e2?.category && e1?.text == e2?.text;
  }

  @override
  int hash(PredictionRecord? e) =>
      const ListEquality().hash([e?.category, e?.text]);

  @override
  bool isValidKey(Object? o) => o is PredictionRecord;
}
