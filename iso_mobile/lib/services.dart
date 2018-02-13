library iso_mobile.services;

import 'dart:async';

import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:iso/model.dart';
import 'package:iso/services.dart';

class FlutterConfigService extends ConfigService {
  FlutterConfigService(Client client) : super(client);

  Future<AppConfig> loadConfig() async {
    var configYaml = await rootBundle.loadString('config.yaml');
    return parseYaml(configYaml);
  }
}
