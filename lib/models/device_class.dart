import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Device {
  final String name;
  final String img;
  final String watt;
  final String id;
  int qty = 1;
  bool selected = false;
  Device({required this.name, required this.img, required this.watt})
      : id = uuid.v4();

  Device.withQty(
      {required this.name,
      required this.img,
      required this.watt,
      required this.qty})
      : id = uuid.v4(),
        selected = true;
}
