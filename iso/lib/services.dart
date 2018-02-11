import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:requester/requester.dart';
import 'package:iso/model.dart';
import 'package:iso/requests.dart' as requests;
import 'package:yaml/yaml.dart';

class AppServices {
  final Client client;
  final ConfigService config;
  final Requester requester;

  ElectionService election;

  AppServices(this.client, this.config) : requester = new Requester(client);

  void createElectionService(Uri host) {
    election = new ElectionService(requester, host);
  }
}

/// [ConfigService] is used to allow apps to be configured to run against other
/// servers.
///
/// Loads and parses a YAML configuration into an [AppConfig]
abstract class ConfigService {
  final Client client;

  ConfigService(this.client);

  Future<AppConfig> loadConfig();

  AppConfig parseYaml(String str) {
    var yaml = loadYaml(str);
    return new AppConfig.fromJson(yaml);
  }
}