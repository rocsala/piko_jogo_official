import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get username;

  @nullable
  String get email;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: 'num_match')
  int get numMatch;

  @nullable
  @BuiltValueField(wireName: 'num_tournaments')
  int get numTournaments;

  @nullable
  DocumentReference get location;

  @nullable
  @BuiltValueField(wireName: 'inscription_date')
  DateTime get inscriptionDate;

  @nullable
  bool get online;

  @nullable
  bool get is_validated;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..username = ''
    ..email = ''
    ..password = ''
    ..numMatch = 0
    ..numTournaments = 0
    ..online = false
    ..is_validated = false
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String username,
  String email,
  String password,
  int numMatch,
  int numTournaments,
  DocumentReference location,
  DateTime inscriptionDate,
  bool online,
  bool is_validated,
  String displayName,
  String photoUrl,
  DateTime createdTime,
  String uid,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..username = username
          ..email = email
          ..password = password
          ..numMatch = numMatch
          ..numTournaments = numTournaments
          ..location = location
          ..inscriptionDate = inscriptionDate
          ..online = online
          ..is_validated = is_validated
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..uid = uid
          ..phoneNumber = phoneNumber));
