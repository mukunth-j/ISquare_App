import 'package:firebase_database/firebase_database.dart';

final databaseReference = FirebaseDatabase.instance.ref();

class fbs {
  static void getData(
      String nodeName, String childName, Function(String) myfunc) {
    final databaseRefFlag = FirebaseDatabase.instance.ref().child(nodeName);
    databaseRefFlag.child(childName).onValue.listen((event) {
      myfunc(event.snapshot.value.toString());
      print("The new value for $childName is ${event.snapshot.value}");
    });
  }

  static void sendData(
      {String? mq9val = "", String? mq7val = "", String? mq4val = ""}) {
    final id = DateTime.now().microsecond.toString();
    databaseReference
        .child("SensorData")
        .set({"mq9": mq9val, "mq7": mq7val, "mq4": mq4val, 'id': id});
  }
}
