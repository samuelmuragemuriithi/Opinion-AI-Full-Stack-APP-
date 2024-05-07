import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstagramPostsRecord extends FirestoreRecord {
  InstagramPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  bool hasCaption() => _caption != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "media_type" field.
  String? _mediaType;
  String get mediaType => _mediaType ?? '';
  bool hasMediaType() => _mediaType != null;

  // "media_url" field.
  String? _mediaUrl;
  String get mediaUrl => _mediaUrl ?? '';
  bool hasMediaUrl() => _mediaUrl != null;

  // "parmalink" field.
  String? _parmalink;
  String get parmalink => _parmalink ?? '';
  bool hasParmalink() => _parmalink != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  void _initializeFields() {
    _caption = snapshotData['caption'] as String?;
    _id = snapshotData['id'] as String?;
    _mediaType = snapshotData['media_type'] as String?;
    _mediaUrl = snapshotData['media_url'] as String?;
    _parmalink = snapshotData['parmalink'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _username = snapshotData['username'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('instagramPosts');

  static Stream<InstagramPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InstagramPostsRecord.fromSnapshot(s));

  static Future<InstagramPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InstagramPostsRecord.fromSnapshot(s));

  static InstagramPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InstagramPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InstagramPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InstagramPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InstagramPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InstagramPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInstagramPostsRecordData({
  String? caption,
  String? id,
  String? mediaType,
  String? mediaUrl,
  String? parmalink,
  DateTime? timestamp,
  String? username,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'caption': caption,
      'id': id,
      'media_type': mediaType,
      'media_url': mediaUrl,
      'parmalink': parmalink,
      'timestamp': timestamp,
      'username': username,
    }.withoutNulls,
  );

  return firestoreData;
}

class InstagramPostsRecordDocumentEquality
    implements Equality<InstagramPostsRecord> {
  const InstagramPostsRecordDocumentEquality();

  @override
  bool equals(InstagramPostsRecord? e1, InstagramPostsRecord? e2) {
    return e1?.caption == e2?.caption &&
        e1?.id == e2?.id &&
        e1?.mediaType == e2?.mediaType &&
        e1?.mediaUrl == e2?.mediaUrl &&
        e1?.parmalink == e2?.parmalink &&
        e1?.timestamp == e2?.timestamp &&
        e1?.username == e2?.username;
  }

  @override
  int hash(InstagramPostsRecord? e) => const ListEquality().hash([
        e?.caption,
        e?.id,
        e?.mediaType,
        e?.mediaUrl,
        e?.parmalink,
        e?.timestamp,
        e?.username
      ]);

  @override
  bool isValidKey(Object? o) => o is InstagramPostsRecord;
}
