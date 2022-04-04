// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_minigame_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LeaderboardMinigameRecord> _$leaderboardMinigameRecordSerializer =
    new _$LeaderboardMinigameRecordSerializer();

class _$LeaderboardMinigameRecordSerializer
    implements StructuredSerializer<LeaderboardMinigameRecord> {
  @override
  final Iterable<Type> types = const [
    LeaderboardMinigameRecord,
    _$LeaderboardMinigameRecord
  ];
  @override
  final String wireName = 'LeaderboardMinigameRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, LeaderboardMinigameRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userPodium;
    if (value != null) {
      result
        ..add('user_podium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.charPodium;
    if (value != null) {
      result
        ..add('char_podium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
  LeaderboardMinigameRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeaderboardMinigameRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user_podium':
          result.userPodium.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'char_podium':
          result.charPodium.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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

class _$LeaderboardMinigameRecord extends LeaderboardMinigameRecord {
  @override
  final BuiltList<DocumentReference<Object>> userPodium;
  @override
  final BuiltList<DocumentReference<Object>> charPodium;
  @override
  final DocumentReference<Object> reference;

  factory _$LeaderboardMinigameRecord(
          [void Function(LeaderboardMinigameRecordBuilder) updates]) =>
      (new LeaderboardMinigameRecordBuilder()..update(updates)).build();

  _$LeaderboardMinigameRecord._(
      {this.userPodium, this.charPodium, this.reference})
      : super._();

  @override
  LeaderboardMinigameRecord rebuild(
          void Function(LeaderboardMinigameRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaderboardMinigameRecordBuilder toBuilder() =>
      new LeaderboardMinigameRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaderboardMinigameRecord &&
        userPodium == other.userPodium &&
        charPodium == other.charPodium &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, userPodium.hashCode), charPodium.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LeaderboardMinigameRecord')
          ..add('userPodium', userPodium)
          ..add('charPodium', charPodium)
          ..add('reference', reference))
        .toString();
  }
}

class LeaderboardMinigameRecordBuilder
    implements
        Builder<LeaderboardMinigameRecord, LeaderboardMinigameRecordBuilder> {
  _$LeaderboardMinigameRecord _$v;

  ListBuilder<DocumentReference<Object>> _userPodium;
  ListBuilder<DocumentReference<Object>> get userPodium =>
      _$this._userPodium ??= new ListBuilder<DocumentReference<Object>>();
  set userPodium(ListBuilder<DocumentReference<Object>> userPodium) =>
      _$this._userPodium = userPodium;

  ListBuilder<DocumentReference<Object>> _charPodium;
  ListBuilder<DocumentReference<Object>> get charPodium =>
      _$this._charPodium ??= new ListBuilder<DocumentReference<Object>>();
  set charPodium(ListBuilder<DocumentReference<Object>> charPodium) =>
      _$this._charPodium = charPodium;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LeaderboardMinigameRecordBuilder() {
    LeaderboardMinigameRecord._initializeBuilder(this);
  }

  LeaderboardMinigameRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userPodium = $v.userPodium?.toBuilder();
      _charPodium = $v.charPodium?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaderboardMinigameRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LeaderboardMinigameRecord;
  }

  @override
  void update(void Function(LeaderboardMinigameRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LeaderboardMinigameRecord build() {
    _$LeaderboardMinigameRecord _$result;
    try {
      _$result = _$v ??
          new _$LeaderboardMinigameRecord._(
              userPodium: _userPodium?.build(),
              charPodium: _charPodium?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userPodium';
        _userPodium?.build();
        _$failedField = 'charPodium';
        _charPodium?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LeaderboardMinigameRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
