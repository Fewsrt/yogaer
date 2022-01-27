// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pose_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PoseHistoryRecord> _$poseHistoryRecordSerializer =
    new _$PoseHistoryRecordSerializer();

class _$PoseHistoryRecordSerializer
    implements StructuredSerializer<PoseHistoryRecord> {
  @override
  final Iterable<Type> types = const [PoseHistoryRecord, _$PoseHistoryRecord];
  @override
  final String wireName = 'PoseHistoryRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PoseHistoryRecord object,
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
    value = object.createAt;
    if (value != null) {
      result
        ..add('create_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  PoseHistoryRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PoseHistoryRecordBuilder();

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
        case 'create_at':
          result.createAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$PoseHistoryRecord extends PoseHistoryRecord {
  @override
  final String name;
  @override
  final DateTime createAt;
  @override
  final DocumentReference<Object> reference;

  factory _$PoseHistoryRecord(
          [void Function(PoseHistoryRecordBuilder) updates]) =>
      (new PoseHistoryRecordBuilder()..update(updates)).build();

  _$PoseHistoryRecord._({this.name, this.createAt, this.reference}) : super._();

  @override
  PoseHistoryRecord rebuild(void Function(PoseHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PoseHistoryRecordBuilder toBuilder() =>
      new PoseHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PoseHistoryRecord &&
        name == other.name &&
        createAt == other.createAt &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), createAt.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PoseHistoryRecord')
          ..add('name', name)
          ..add('createAt', createAt)
          ..add('reference', reference))
        .toString();
  }
}

class PoseHistoryRecordBuilder
    implements Builder<PoseHistoryRecord, PoseHistoryRecordBuilder> {
  _$PoseHistoryRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _createAt;
  DateTime get createAt => _$this._createAt;
  set createAt(DateTime createAt) => _$this._createAt = createAt;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PoseHistoryRecordBuilder() {
    PoseHistoryRecord._initializeBuilder(this);
  }

  PoseHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _createAt = $v.createAt;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PoseHistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PoseHistoryRecord;
  }

  @override
  void update(void Function(PoseHistoryRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PoseHistoryRecord build() {
    final _$result = _$v ??
        new _$PoseHistoryRecord._(
            name: name, createAt: createAt, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
