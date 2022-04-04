import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_score_record.g.dart';

abstract class UserScoreRecord
    implements Built<UserScoreRecord, UserScoreRecordBuilder> {
  static Serializer<UserScoreRecord> get serializer =>
      _$userScoreRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  int get score;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserScoreRecordBuilder builder) =>
      builder..score = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_score');

  static Stream<UserScoreRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserScoreRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserScoreRecord._();
  factory UserScoreRecord([void Function(UserScoreRecordBuilder) updates]) =
      _$UserScoreRecord;

  static UserScoreRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserScoreRecordData({
  DocumentReference user,
  int score,
}) =>
    serializers.toFirestore(
        UserScoreRecord.serializer,
        UserScoreRecord((u) => u
          ..user = user
          ..score = score));
