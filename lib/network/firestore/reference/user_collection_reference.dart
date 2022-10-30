import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:masmas_food/network/datas/user.dart';
import 'package:masmas_food/network/firestore/reference/base_collection_reference.dart';

class UserCollectionReference extends BaseCollectionReference<WUser> {
  UserCollectionReference()
      : super(
            FirebaseFirestore.instance.collection('Users').withConverter<WUser>(
                  fromFirestore: (snapshot, _) => WUser.fromDocument(snapshot),
                  toFirestore: (userModel, _) => userModel.toMap(),
                ));
}
