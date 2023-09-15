import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Device {
  final String name;
  final String img;
  final String watt;
  final String id;
  final List<String> types;
  String type = "New";
  int qty = 1;
  Device(
      {required this.name,
      required this.img,
      required this.watt,
      required this.types})
      : id = uuid.v4();
  Device.withQty(
      {required this.name,
      required this.img,
      required this.watt,
      required this.qty,
      required this.types})
      : id = uuid.v4();
}
