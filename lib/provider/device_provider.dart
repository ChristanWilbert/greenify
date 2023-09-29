import 'package:flutter/material.dart';

import 'package:greenify/models/device_class.dart';

final List<Device> deviceTypes = [
  Device(
      name: "AC",
      img: "assets/images/AC.png",
      watt: 1000,
      types: ["Inverter", "Old", "New"],
      avgConsumption: 10,
      qty: 1),
  Device(
      name: "Bulb",
      img: "assets/images/BULB.png",
      watt: 20,
      avgConsumption: 10,
      qty: 5,
      types: ["Old", "New"]),
  Device(
    name: "Fan",
    img: "assets/images/FAN.png",
    watt: 50,
    avgConsumption: 10,
    types: ["Old", "New"],
    qty: 5,
  ),
  Device(
      name: "Fridge",
      img: "assets/images/FRIDGE.png",
      watt: 600,
      avgConsumption: 16,
      qty: 1,
      types: ["Inverter", "Old", "New"]),
  Device(
      name: "Iron",
      img: "assets/images/IRON.png",
      watt: 1000,
      avgConsumption: 1,
      qty: 1,
      types: ["Old", "New"]),
  Device(
      name: "TV",
      img: "assets/images/TV.png",
      watt: 300,
      avgConsumption: 3,
      qty: 1,
      types: ["Old", "New"]),
  Device(
      name: "WM",
      img: "assets/images/WM.png",
      watt: 1500,
      avgConsumption: 1,
      qty: 1,
      types: ["Old", "New"]),
  Device(
      name: "Device",
      img: "assets/images/device.png",
      watt: 500,
      avgConsumption: 5,
      qty: 1,
      types: ["Old", "New"]),
];

class DeviceProvider with ChangeNotifier {
  final List<Device> _devices = deviceTypes;
  final List<Device> _selectedDevices = [
    deviceTypes[1],
    deviceTypes[2],
    deviceTypes[6]
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
