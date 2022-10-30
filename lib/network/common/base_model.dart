import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class BaseModel {
  String? id;
  Timestamp? createAt;
  final Timestamp? updateAt;
  BaseModel({this.id, this.createAt, this.updateAt}) {
    Timestamp createAt = Timestamp.now();
    final String id = const Uuid().v4();
    this.createAt = this.createAt ?? createAt;
    this.id = this.id ?? id;
  }
}
