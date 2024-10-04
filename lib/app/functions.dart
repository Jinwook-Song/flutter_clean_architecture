import 'dart:io';

import 'package:clean_architecture/domain/model/model.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';

Future<DeviceInfo> getDeviceInfo() async {
  String name = 'Unknown';
  String identifier = 'Unknown';
  String version = 'Unknown';

  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  try {
    if (Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      name = "${info.brand} ${info.model}";
      identifier = info.id;
      version = info.version.codename;
    } else if (Platform.isIOS) {
      final info = await deviceInfo.iosInfo;
      name = "${info.name} ${info.model}";
      identifier = info.identifierForVendor ?? '';
      version = info.systemVersion;
    }
  } on PlatformException {
    return DeviceInfo(name: name, identifier: identifier, version: version);
  }

  return DeviceInfo(name: name, identifier: identifier, version: version);
}
