import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'minigame_record.g.dart';

abstract class MinigameRecord
    implements Built<MinigameRecord, MinigameRecordBuilder> {
  static Serializer<MinigameRecord> get serializer =>
      _$minigameRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: 'minigame_icon')
  String get minigameIcon;

  @nullable
  @BuiltValueField(wireName: 'max_num_players')
  int get maxNumPlayers;

  @nullable
  bool get online;

  @nullable
  String get genre;

  @nullable
  DateTime get released;

  @nullable
  @BuiltValueField(wireName: 'num_times_played')
  int get numTimesPlayed;

  @nullable
  DocumentReference get leaderboard;

  @nullable
  DateTime get published;

  @nullable
  bool get multiplayer;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MinigameRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..minigameIcon = ''
    ..maxNumPlayers = 0
    ..online = false
    ..genre = ''
    ..numTimesPlayed = 0
    ..multiplayer = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('minigame');

  static Stream<MinigameRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MinigameRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MinigameRecord._();
  factory MinigameRecord([void Function(MinigameRecordBuilder) updates]) =
      _$MinigameRecord;

  static MinigameRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMinigameRecordData({
  String name,
  String description,
  String minigameIcon,
  int maxNumPlayers,
  bool online,
  String genre,
  DateTime released,
  int numTimesPlayed,
  DocumentReference leaderboard,
  DateTime published,
  bool multiplayer,
}) =>
    serializers.toFirestore(
        MinigameRecord.serializer,
        MinigameRecord((m) => m
          ..name = name
          ..description = description
          ..minigameIcon = minigameIcon
          ..maxNumPlayers = maxNumPlayers
          ..online = online
          ..genre = genre
          ..released = released
          ..numTimesPlayed = numTimesPlayed
          ..leaderboard = leaderboard
          ..published = published
          ..multiplayer = multiplayer));
