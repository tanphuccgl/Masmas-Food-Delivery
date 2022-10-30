import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:masmas_food/network/common/base_model.dart';

class WShippingAddress extends BaseModel {
  final String address;

  WShippingAddress(
      {required this.address,
      String? id,
      Timestamp? createAt,
      Timestamp? updateAt})
      : super(
          id: id,
          createAt: createAt,
          updateAt: updateAt,
        );
  static WShippingAddress fromMap(Map map) => WShippingAddress(
        address: map['address'],
        id: map['id'],
        createAt: map['createAt'],
        updateAt: map['updateAt'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'createAt': createAt,
        'updateAt': updateAt,
        'address': address,
      };

  WShippingAddress copyWith({
    String? id,
    Timestamp? createAt,
    Timestamp? updateAt,
    String? address,
  }) {
    return WShippingAddress(
      id: id ?? this.id,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
      address: address ?? this.address,
    );
  }
}
