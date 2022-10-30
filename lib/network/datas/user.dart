import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:masmas_food/network/common/base_model.dart';
import 'package:masmas_food/network/datas/payment_method.dart';
import 'package:masmas_food/network/datas/shipping_address.dart';

class WUser extends BaseModel {
  final String email;
  final String phone;
  final String username;
  final String firstName;
  final String lastName;
  final String photo;
  final List<WShippingAddress> address;
  final List<WPaymentMethod> payment;

  WUser(
      {required this.email,
      required this.phone,
      required this.username,
      required this.firstName,
      required this.lastName,
      required this.photo,
      required this.address,
      required this.payment,
      String? id,
      Timestamp? createAt,
      Timestamp? updateAt})
      : super(
          id: id,
          createAt: createAt,
          updateAt: updateAt,
        );

  static WUser fromMap(Map map) => WUser(
        id: map['id'],
        createAt: map['createAt'],
        updateAt: map['updateAt'],
        email: map['email'],
        phone: map['phone'],
        username: map['username'],
        firstName: map['firstName'],
        lastName: map['lastName'],
        photo: map['photo'],
        address: (map['address'] as List)
            .map((e) => WShippingAddress.fromMap(e))
            .toList(),
        payment: (map['payment'] as List)
            .map((e) => WPaymentMethod.fromMap(e))
            .toList(),
      );

  factory WUser.fromDocument(DocumentSnapshot doc) =>
      WUser.fromMap(doc.data() as Map<String, dynamic>);

  Map<String, dynamic> toMap() => {
        'id': id,
        'createAt': createAt,
        'updateAt': updateAt,
        'email': email,
        'phone': phone,
        'username': username,
        'firstName': firstName,
        'lastName': lastName,
        'photo': photo,
        'address': address.map((e) => e.toMap()),
        'payment': payment.map((e) => e.toMap()),
      };

  WUser copyWith({
    String? id,
    Timestamp? createAt,
    Timestamp? updateAt,
    String? email,
    String? phone,
    String? username,
    String? firstName,
    String? lastName,
    String? photo,
    List<WShippingAddress>? address,
    List<WPaymentMethod>? payment,
  }) {
    return WUser(
      id: id ?? this.id,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      photo: photo ?? this.photo,
      address: address ?? this.address,
      payment: payment ?? this.payment,
    );
  }
}
