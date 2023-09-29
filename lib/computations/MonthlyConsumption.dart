import 'package:greenify/models/device_class.dart';

int MonthlyConsumption(List<Device> selectedDevices) {
  int units = 0;
  for (Device device in selectedDevices) {
    units += (device.avgConsumption * device.qty * device.watt).toInt();
  }

  return units ~/ 1000;
}
