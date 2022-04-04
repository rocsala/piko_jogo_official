// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minigame_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MinigameRecord> _$minigameRecordSerializer =
    new _$MinigameRecordSerializer();

class _$MinigameRecordSerializer
    implements StructuredSerializer<MinigameRecord> {
  @override
  final Iterable<Type> types = const [MinigameRecord, _$MinigameRecord];
  @override
  final String wireName = 'MinigameRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MinigameRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minigameIcon;
    if (value != null) {
      result
        ..add('minigame_icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxNumPlayers;
    if (value != null) {
      result
        ..add('max_num_players')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.online;
    if (value != null) {
      result
        ..add('online')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genre;
    if (value != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.released;
    if (value != null) {
      result
        ..add('released')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.numTimesPlayed;
    if (value != null) {
      result
        ..add('num_times_played')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.leaderboard;
    if (value != null) {
      result
        ..add('leaderboard')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.published;
    if (value != null) {
      result
        ..add('published')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.multiplayer;
    if (value != null) {
      result
        ..add('multiplayer')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  MinigameRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MinigameRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'minigame_icon':
          result.minigameIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'max_num_players':
          result.maxNumPlayers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'online':
          result.online = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'released':
          result.released = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'num_times_played':
          result.numTimesPlayed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'leaderboard':
          result.leaderboard = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'published':
          result.published = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'multiplayer':
          result.multiplayer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$MinigameRecord extends MinigameRecord {
  @override
  final String name;
  @override
  final String description;
  @override
  final String minigameIcon;
  @override
  final int maxNumPlayers;
  @override
  final bool online;
  @override
  final String genre;
  @override
  final DateTime released;
  @override
  final int numTimesPlayed;
  @override
  final DocumentReference<Object> leaderboard;
  @override
  final DateTime published;
  @override
  final bool multiplayer;
  @override
  final DocumentReference<Object> reference;

  factory _$MinigameRecord([void Function(MinigameRecordBuilder) updates]) =>
      (new MinigameRecordBuilder()..update(updates)).build();

  _$MinigameRecord._(
      {this.name,
      this.description,
      this.minigameIcon,
      this.maxNumPlayers,
      this.online,
      this.genre,
      this.released,
      this.numTimesPlayed,
      this.leaderboard,
      this.published,
      this.multiplayer,
      this.reference})
      : super._();

  @override
  MinigameRecord rebuild(void Function(MinigameRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MinigameRecordBuilder toBuilder() =>
      new MinigameRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MinigameRecord &&
        name == other.name &&
        description == other.description &&
        minigameIcon == other.minigameIcon &&
        maxNumPlayers == other.maxNumPlayers &&
        online == other.online &&
        genre == other.genre &&
        released == other.released &&
        numTimesPlayed == other.numTimesPlayed &&
        leaderboard == other.leaderboard &&
        published == other.published &&
        multiplayer == other.multiplayer &&
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
                                            $jc($jc(0, name.hashCode),
                                                description.hashCode),
                                            minigameIcon.hashCode),
                                        maxNumPlayers.hashCode),
                                    online.hashCode),
                                genre.hashCode),
                            released.hashCode),
                        numTimesPlayed.hashCode),
                    leaderboard.hashCode),
                published.hashCode),
            multiplayer.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MinigameRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('minigameIcon', minigameIcon)
          ..add('maxNumPlayers', maxNumPlayers)
          ..add('online', online)
          ..add('genre', genre)
          ..add('released', released)
          ..add('numTimesPlayed', numTimesPlayed)
          ..add('leaderboard', leaderboard)
          ..add('published', published)
          ..add('multiplayer', multiplayer)
          ..add('reference', reference))
        .toString();
  }
}

class MinigameRecordBuilder
    implements Builder<MinigameRecord, MinigameRecordBuilder> {
  _$MinigameRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _minigameIcon;
  String get minigameIcon => _$this._minigameIcon;
  set minigameIcon(String minigameIcon) => _$this._minigameIcon = minigameIcon;

  int _maxNumPlayers;
  int get maxNumPlayers => _$this._maxNumPlayers;
  set maxNumPlayers(int maxNumPlayers) => _$this._maxNumPlayers = maxNumPlayers;

  bool _online;
  bool get online => _$this._online;
  set online(bool online) => _$this._online = online;

  String _genre;
  String get genre => _$this._genre;
  set genre(String genre) => _$this._genre = genre;

  DateTime _released;
  DateTime get released => _$this._released;
  set released(DateTime released) => _$this._released = released;

  int _numTimesPlayed;
  int get numTimesPlayed => _$this._numTimesPlayed;
  set numTimesPlayed(int numTimesPlayed) =>
      _$this._numTimesPlayed = numTimesPlayed;

  DocumentReference<Object> _leaderboard;
  DocumentReference<Object> get leaderboard => _$this._leaderboard;
  set leaderboard(DocumentReference<Object> leaderboard) =>
      _$this._leaderboard = leaderboard;

  DateTime _published;
  DateTime get published => _$this._published;
  set published(DateTime published) => _$this._published = published;

  bool _multiplayer;
  bool get multiplayer => _$this._multiplayer;
  set multiplayer(bool multiplayer) => _$this._multiplayer = multiplayer;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MinigameRecordBuilder() {
    MinigameRecord._initializeBuilder(this);
  }

  MinigameRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _minigameIcon = $v.minigameIcon;
      _maxNumPlayers = $v.maxNumPlayers;
      _online = $v.online;
      _genre = $v.genre;
      _released = $v.released;
      _numTimesPlayed = $v.numTimesPlayed;
      _leaderboard = $v.leaderboard;
      _published = $v.published;
      _multiplayer = $v.multiplayer;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MinigameRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MinigameRecord;
  }

  @override
  void update(void Function(MinigameRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MinigameRecord build() {
    final _$result = _$v ??
        new _$MinigameRecord._(
            name: name,
            description: description,
            minigameIcon: minigameIcon,
            maxNumPlayers: maxNumPlayers,
            online: online,
            genre: genre,
            released: released,
            numTimesPlayed: numTimesPlayed,
            leaderboard: leaderboard,
            published: published,
            multiplayer: multiplayer,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
