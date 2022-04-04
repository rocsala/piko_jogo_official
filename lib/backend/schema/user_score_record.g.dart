// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_score_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserScoreRecord> _$userScoreRecordSerializer =
    new _$UserScoreRecordSerializer();

class _$UserScoreRecordSerializer
    implements StructuredSerializer<UserScoreRecord> {
  @override
  final Iterable<Type> types = const [UserScoreRecord, _$UserScoreRecord];
  @override
  final String wireName = 'UserScoreRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserScoreRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UserScoreRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserScoreRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$UserScoreRecord extends UserScoreRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final int score;
  @override
  final DocumentReference<Object> reference;

  factory _$UserScoreRecord([void Function(UserScoreRecordBuilder) updates]) =>
      (new UserScoreRecordBuilder()..update(updates)).build();

  _$UserScoreRecord._({this.user, this.score, this.reference}) : super._();

  @override
  UserScoreRecord rebuild(void Function(UserScoreRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserScoreRecordBuilder toBuilder() =>
      new UserScoreRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserScoreRecord &&
        user == other.user &&
        score == other.score &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, user.hashCode), score.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserScoreRecord')
          ..add('user', user)
          ..add('score', score)
          ..add('reference', reference))
        .toString();
  }
}

class UserScoreRecordBuilder
    implements Builder<UserScoreRecord, UserScoreRecordBuilder> {
  _$UserScoreRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserScoreRecordBuilder() {
    UserScoreRecord._initializeBuilder(this);
  }

  UserScoreRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _score = $v.score;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserScoreRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserScoreRecord;
  }

  @override
  void update(void Function(UserScoreRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserScoreRecord build() {
    final _$result = _$v ??
        new _$UserScoreRecord._(user: user, score: score, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
