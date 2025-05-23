import 'package:hive/hive.dart';

part 'notes.g.dart';

@HiveType(typeId: 0)
class Note extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String content;

  @HiveField(2)
  DateTime createdTime;

  Note({
    required this.title,
    required this.content,
    required this.createdTime,
  });
}