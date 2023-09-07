import 'package:flutter/material.dart';

import 'package:greenify/models/device_class.dart';

final List<Device> deviceTypes = [
  Device(name: "Air Conditioner", img: "assets/images/AC.png", watt: "2000"),
  Device.withQty(
      name: "Bulb", img: "assets/images/BULB.png", watt: "2600", qty: 5),
  Device(name: "Fan", img: "assets/images/FAN.png", watt: "2500"),
  Device.withQty(
      name: "Fridge", img: "assets/images/FRIDGE.png", watt: "1000", qty: 2),
  Device.withQty(
      name: "Iron", img: "assets/images/IRON.png", watt: "2900", qty: 100),
];

class DeviceProvider with ChangeNotifier {
  final List<Device> _devices = deviceTypes;
  final List<Device> _selectedDevices = [
    deviceTypes[0],
    deviceTypes[3],
    deviceTypes[4]
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
