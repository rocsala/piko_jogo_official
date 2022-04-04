// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_store_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CharacterStoreRecord> _$characterStoreRecordSerializer =
    new _$CharacterStoreRecordSerializer();

class _$CharacterStoreRecordSerializer
    implements StructuredSerializer<CharacterStoreRecord> {
  @override
  final Iterable<Type> types = const [
    CharacterStoreRecord,
    _$CharacterStoreRecord
  ];
  @override
  final String wireName = 'CharacterStoreRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CharacterStoreRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
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
  CharacterStoreRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterStoreRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
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

class _$CharacterStoreRecord extends CharacterStoreRecord {
  @override
  final String name;
  @override
  final int score;
  @override
  final String icon;
  @override
  final DocumentReference<Object> reference;

  factory _$CharacterStoreRecord(
          [void Function(CharacterStoreRecordBuilder) updates]) =>
      (new CharacterStoreRecordBuilder()..update(updates)).build();

  _$CharacterStoreRecord._({this.name, this.score, this.icon, this.reference})
      : super._();

  @override
  CharacterStoreRecord rebuild(
          void Function(CharacterStoreRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterStoreRecordBuilder toBuilder() =>
      new CharacterStoreRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharacterStoreRecord &&
        name == other.name &&
        score == other.score &&
        icon == other.icon &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), score.hashCode), icon.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CharacterStoreRecord')
          ..add('name', name)
          ..add('score', score)
          ..add('icon', icon)
          ..add('reference', reference))
        .toString();
  }
}

class CharacterStoreRecordBuilder
    implements Builder<CharacterStoreRecord, CharacterStoreRecordBuilder> {
  _$CharacterStoreRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CharacterStoreRecordBuilder() {
    CharacterStoreRecord._initializeBuilder(this);
  }

  CharacterStoreRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _score = $v.score;
      _icon = $v.icon;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharacterStoreRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CharacterStoreRecord;
  }

  @override
  void update(void Function(CharacterStoreRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CharacterStoreRecord build() {
    final _$result = _$v ??
        new _$CharacterStoreRecord._(
            name: name, score: score, icon: icon, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
