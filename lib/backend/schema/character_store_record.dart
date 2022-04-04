import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'character_store_record.g.dart';

abstract class CharacterStoreRecord
    implements Built<CharacterStoreRecord, CharacterStoreRecordBuilder> {
  static Serializer<CharacterStoreRecord> get serializer =>
      _$characterStoreRecordSerializer;

  @nullable
  String get name;

  @nullable
  int get score;

  @nullable
  String get icon;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CharacterStoreRecordBuilder builder) => builder
    ..name = ''
    ..score = 0
    ..icon = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('character_store');

  static Stream<CharacterStoreRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CharacterStoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CharacterStoreRecord._();
  factory CharacterStoreRecord(
          [void Function(CharacterStoreRecordBuilder) updates]) =
      _$CharacterStoreRecord;

  static CharacterStoreRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCharacterStoreRecordData({
  String name,
  int score,
  String icon,
}) =>
    serializers.toFirestore(
        CharacterStoreRecord.serializer,
        CharacterStoreRecord((c) => c
          ..name = name
          ..score = score
          ..icon = icon));
