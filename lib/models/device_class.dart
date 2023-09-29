import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Device {
  final String name;
  final String img;
  final int watt;
  final String id;
  final List<String> types;
  final int qty;
  final double avgConsumption;
  String type = "New";
  Device(
      {required this.name,
      required this.img,
      required this.watt,
      required this.avgConsumption,
      required this.qty,
      required this.types})
      : id = uuid.v4();
}
