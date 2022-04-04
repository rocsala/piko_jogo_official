// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationRecord> _$locationRecordSerializer =
    new _$LocationRecordSerializer();

class _$LocationRecordSerializer
    implements StructuredSerializer<LocationRecord> {
  @override
  final Iterable<Type> types = const [LocationRecord, _$LocationRecord];
  @override
  final String wireName = 'LocationRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.xLocation;
    if (value != null) {
      result
        ..add('x_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.yLocation;
    if (value != null) {
      result
        ..add('y_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
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
  LocationRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'x_location':
          result.xLocation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'y_location':
          result.yLocation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
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

class _$LocationRecord extends LocationRecord {
  @override
  final double xLocation;
  @override
  final double yLocation;
  @override
  final String city;
  @override
  final DocumentReference<Object> reference;

  factory _$LocationRecord([void Function(LocationRecordBuilder) updates]) =>
      (new LocationRecordBuilder()..update(updates)).build();

  _$LocationRecord._(
      {this.xLocation, this.yLocation, this.city, this.reference})
      : super._();

  @override
  LocationRecord rebuild(void Function(LocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationRecordBuilder toBuilder() =>
      new LocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationRecord &&
        xLocation == other.xLocation &&
        yLocation == other.yLocation &&
        city == other.city &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, xLocation.hashCode), yLocation.hashCode), city.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationRecord')
          ..add('xLocation', xLocation)
          ..add('yLocation', yLocation)
          ..add('city', city)
          ..add('reference', reference))
        .toString();
  }
}

class LocationRecordBuilder
    implements Builder<LocationRecord, LocationRecordBuilder> {
  _$LocationRecord _$v;

  double _xLocation;
  double get xLocation => _$this._xLocation;
  set xLocation(double xLocation) => _$this._xLocation = xLocation;

  double _yLocation;
  double get yLocation => _$this._yLocation;
  set yLocation(double yLocation) => _$this._yLocation = yLocation;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  LocationRecordBuilder() {
    LocationRecord._initializeBuilder(this);
  }

  LocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _xLocation = $v.xLocation;
      _yLocation = $v.yLocation;
      _city = $v.city;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationRecord;
  }

  @override
  void update(void Function(LocationRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationRecord build() {
    final _$result = _$v ??
        new _$LocationRecord._(
            xLocation: xLocation,
            yLocation: yLocation,
            city: city,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
