import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'data_user_record.g.dart';

abstract class DataUserRecord
    implements Built<DataUserRecord, DataUserRecordBuilder> {
  static Serializer<DataUserRecord> get serializer =>
      _$dataUserRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'Gender')
  String get gender;

  @nullable
  String get often;

  @nullable
  int get age;

  @nullable
  int get height;

  @nullable
  int get weight;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DataUserRecordBuilder builder) => builder
    ..gender = ''
    ..often = ''
    ..age = 0
    ..height = 0
    ..weight = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DataUser');

  static Stream<DataUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DataUserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DataUserRecord._();
  factory DataUserRecord([void Function(DataUserRecordBuilder) updates]) =
      _$DataUserRecord;

  static DataUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDataUserRecordData({
  DocumentReference user,
  String gender,
  String often,
  int age,
  int height,
  int weight,
}) =>
    serializers.toFirestore(
        DataUserRecord.serializer,
        DataUserRecord((d) => d
          ..user = user
          ..gender = gender
          ..often = often
          ..age = age
          ..height = height
          ..weight = weight));
