import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:masmas_food/network/common/base_model.dart';

class WPaymentMethod extends BaseModel {
  final String name;
  final String cardNumber;

  WPaymentMethod(
      {required this.name,
      required this.cardNumber,
      String? id,
      Timestamp? createAt,
      Timestamp? updateAt})
      : super(
          id: id,
          createAt: createAt,
          updateAt: updateAt,
        );

  static WPaymentMethod fromMap(Map map) => WPaymentMethod(
        name: map['name'],
        cardNumber: map['cardNumber'],
        id: map['id'],
        createAt: map['createAt'],
        updateAt: map['updateAt'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'createAt': createAt,
        'updateAt': updateAt,
        'name': name,
        'cardNumber': cardNumber,
      };

  WPaymentMethod copyWith({
    String? name,
    String? cardNumber,
    String? id,
    Timestamp? createAt,
    Timestamp? updateAt,
  }) {
    return WPaymentMethod(
      id: id ?? this.id,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
      name: name ?? this.name,
      cardNumber: cardNumber ?? this.cardNumber,
    );
  }
}
