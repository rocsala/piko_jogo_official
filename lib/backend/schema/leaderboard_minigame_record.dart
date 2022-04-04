import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'leaderboard_minigame_record.g.dart';

abstract class LeaderboardMinigameRecord
    implements
        Built<LeaderboardMinigameRecord, LeaderboardMinigameRecordBuilder> {
  static Serializer<LeaderboardMinigameRecord> get serializer =>
      _$leaderboardMinigameRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'user_podium')
  BuiltList<DocumentReference> get userPodium;

  @nullable
  @BuiltValueField(wireName: 'char_podium')
  BuiltList<DocumentReference> get charPodium;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LeaderboardMinigameRecordBuilder builder) =>
      builder
        ..userPodium = ListBuilder()
        ..charPodium = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leaderboard_minigame');

  static Stream<LeaderboardMinigameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LeaderboardMinigameRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  LeaderboardMinigameRecord._();
  factory LeaderboardMinigameRecord(
          [void Function(LeaderboardMinigameRecordBuilder) updates]) =
      _$LeaderboardMinigameRecord;

  static LeaderboardMinigameRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLeaderboardMinigameRecordData() =>
    serializers.toFirestore(
        LeaderboardMinigameRecord.serializer,
        LeaderboardMinigameRecord((l) => l
          ..userPodium = null
          ..charPodium = null));
