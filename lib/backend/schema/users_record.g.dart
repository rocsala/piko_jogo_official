// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numMatch;
    if (value != null) {
      result
        ..add('num_match')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numTournaments;
    if (value != null) {
      result
        ..add('num_tournaments')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.inscriptionDate;
    if (value != null) {
      result
        ..add('inscription_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.online;
    if (value != null) {
      result
        ..add('online')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_validated;
    if (value != null) {
      result
        ..add('is_validated')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'num_match':
          result.numMatch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'num_tournaments':
          result.numTournaments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'inscription_date':
          result.inscriptionDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'online':
          result.online = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_validated':
          result.is_validated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final int numMatch;
  @override
  final int numTournaments;
  @override
  final DocumentReference<Object> location;
  @override
  final DateTime inscriptionDate;
  @override
  final bool online;
  @override
  final bool is_validated;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final DateTime createdTime;
  @override
  final String uid;
  @override
  final String phoneNumber;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.username,
      this.email,
      this.password,
      this.numMatch,
      this.numTournaments,
      this.location,
      this.inscriptionDate,
      this.online,
      this.is_validated,
      this.displayName,
      this.photoUrl,
      this.createdTime,
      this.uid,
      this.phoneNumber,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        numMatch == other.numMatch &&
        numTournaments == other.numTournaments &&
        location == other.location &&
        inscriptionDate == other.inscriptionDate &&
        online == other.online &&
        is_validated == other.is_validated &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                username
                                                                    .hashCode),
                                                            email.hashCode),
                                                        password.hashCode),
                                                    numMatch.hashCode),
                                                numTournaments.hashCode),
                                            location.hashCode),
                                        inscriptionDate.hashCode),
                                    online.hashCode),
                                is_validated.hashCode),
                            displayName.hashCode),
                        photoUrl.hashCode),
                    createdTime.hashCode),
                uid.hashCode),
            phoneNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('username', username)
          ..add('email', email)
          ..add('password', password)
          ..add('numMatch', numMatch)
          ..add('numTournaments', numTournaments)
          ..add('location', location)
          ..add('inscriptionDate', inscriptionDate)
          ..add('online', online)
          ..add('is_validated', is_validated)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  int _numMatch;
  int get numMatch => _$this._numMatch;
  set numMatch(int numMatch) => _$this._numMatch = numMatch;

  int _numTournaments;
  int get numTournaments => _$this._numTournaments;
  set numTournaments(int numTournaments) =>
      _$this._numTournaments = numTournaments;

  DocumentReference<Object> _location;
  DocumentReference<Object> get location => _$this._location;
  set location(DocumentReference<Object> location) =>
      _$this._location = location;

  DateTime _inscriptionDate;
  DateTime get inscriptionDate => _$this._inscriptionDate;
  set inscriptionDate(DateTime inscriptionDate) =>
      _$this._inscriptionDate = inscriptionDate;

  bool _online;
  bool get online => _$this._online;
  set online(bool online) => _$this._online = online;

  bool _is_validated;
  bool get is_validated => _$this._is_validated;
  set is_validated(bool is_validated) => _$this._is_validated = is_validated;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _numMatch = $v.numMatch;
      _numTournaments = $v.numTournaments;
      _location = $v.location;
      _inscriptionDate = $v.inscriptionDate;
      _online = $v.online;
      _is_validated = $v.is_validated;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            username: username,
            email: email,
            password: password,
            numMatch: numMatch,
            numTournaments: numTournaments,
            location: location,
            inscriptionDate: inscriptionDate,
            online: online,
            is_validated: is_validated,
            displayName: displayName,
            photoUrl: photoUrl,
            createdTime: createdTime,
            uid: uid,
            phoneNumber: phoneNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
