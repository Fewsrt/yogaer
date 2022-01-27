// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourseRecord> _$courseRecordSerializer =
    new _$CourseRecordSerializer();

class _$CourseRecordSerializer implements StructuredSerializer<CourseRecord> {
  @override
  final Iterable<Type> types = const [CourseRecord, _$CourseRecord];
  @override
  final String wireName = 'CourseRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CourseRecord object,
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
    value = object.detail;
    if (value != null) {
      result
        ..add('detail')
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
  CourseRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourseRecordBuilder();

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
        case 'detail':
          result.detail = serializers.deserialize(value,
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

class _$CourseRecord extends CourseRecord {
  @override
  final String name;
  @override
  final String detail;
  @override
  final DateTime createAt;
  @override
  final DocumentReference<Object> reference;

  factory _$CourseRecord([void Function(CourseRecordBuilder) updates]) =>
      (new CourseRecordBuilder()..update(updates)).build();

  _$CourseRecord._({this.name, this.detail, this.createAt, this.reference})
      : super._();

  @override
  CourseRecord rebuild(void Function(CourseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseRecordBuilder toBuilder() => new CourseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourseRecord &&
        name == other.name &&
        detail == other.detail &&
        createAt == other.createAt &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), detail.hashCode), createAt.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseRecord')
          ..add('name', name)
          ..add('detail', detail)
          ..add('createAt', createAt)
          ..add('reference', reference))
        .toString();
  }
}

class CourseRecordBuilder
    implements Builder<CourseRecord, CourseRecordBuilder> {
  _$CourseRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _detail;
  String get detail => _$this._detail;
  set detail(String detail) => _$this._detail = detail;

  DateTime _createAt;
  DateTime get createAt => _$this._createAt;
  set createAt(DateTime createAt) => _$this._createAt = createAt;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CourseRecordBuilder() {
    CourseRecord._initializeBuilder(this);
  }

  CourseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _detail = $v.detail;
      _createAt = $v.createAt;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CourseRecord;
  }

  @override
  void update(void Function(CourseRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseRecord build() {
    final _$result = _$v ??
        new _$CourseRecord._(
            name: name,
            detail: detail,
            createAt: createAt,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
