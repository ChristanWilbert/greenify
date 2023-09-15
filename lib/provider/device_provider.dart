import 'package:flutter/material.dart';

import 'package:greenify/models/device_class.dart';

final List<Device> deviceTypes = [
  Device.withQty(
      name: "AC",
      img: "assets/images/AC.png",
      watt: "1000",
      types: ["Inverter", "Old", "New"],
      qty: 1),
  Device.withQty(
      name: "Bulb",
      img: "assets/images/BULB.png",
      watt: "20",
      qty: 5,
      types: ["Old", "New"]),
  Device.withQty(
    name: "Fan",
    img: "assets/images/FAN.png",
    watt: "50",
    types: ["Old", "New"],
    qty: 5,
  ),
  Device.withQty(
      name: "Fridge",
      img: "assets/images/FRIDGE.png",
      watt: "600",
      qty: 1,
      types: ["Inverter", "Old", "New"]),
  Device.withQty(
      name: "Iron",
      img: "assets/images/IRON.png",
      watt: "1000",
      qty: 1,
      types: ["Old", "New"]),
];

class DeviceProvider with ChangeNotifier {
  final List<Device> _devices = deviceTypes;
  final List<Device> _selectedDevices = [
    deviceTypes[1],
    deviceTypes[2],
    deviceTypes[3]
  ];

  List<Device> get devices => _devices;
  List<Device> get selectedDevices => _selectedDevices;

  void selectDevice(Device device) {
    _selectedDevices.add(device);
    notifyListeners();
  }

  void deselectDevice(Device device) {
    _selectedDevices.remove(device);
    notifyListeners();
  }
}
