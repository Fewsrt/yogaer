import 'dart:async';

// import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'course_record.g.dart';

abstract class CourseRecord
    implements Built<CourseRecord, CourseRecordBuilder> {
  static Serializer<CourseRecord> get serializer => _$courseRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get detail;

  @nullable
  @BuiltValueField(wireName: 'create_at')
  DateTime get createAt;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CourseRecordBuilder builder) => builder
    ..name = ''
    ..detail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Course');

  static Stream<CourseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CourseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CourseRecord._();
  factory CourseRecord([void Function(CourseRecordBuilder) updates]) =
      _$CourseRecord;

  static CourseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCourseRecordData({
  String name,
  String detail,
  DateTime createAt,
}) =>
    serializers.toFirestore(
        CourseRecord.serializer,
        CourseRecord((c) => c
          ..name = name
          ..detail = detail
          ..createAt = createAt));
