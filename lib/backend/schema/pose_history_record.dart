import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pose_history_record.g.dart';

abstract class PoseHistoryRecord
    implements Built<PoseHistoryRecord, PoseHistoryRecordBuilder> {
  static Serializer<PoseHistoryRecord> get serializer =>
      _$poseHistoryRecordSerializer;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'create_at')
  DateTime get createAt;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PoseHistoryRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PoseHistory');

  static Stream<PoseHistoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PoseHistoryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PoseHistoryRecord._();
  factory PoseHistoryRecord([void Function(PoseHistoryRecordBuilder) updates]) =
      _$PoseHistoryRecord;

  static PoseHistoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPoseHistoryRecordData({
  String name,
  DateTime createAt,
}) =>
    serializers.toFirestore(
        PoseHistoryRecord.serializer,
        PoseHistoryRecord((p) => p
          ..name = name
          ..createAt = createAt));
