library iso.model;

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  final String firstName;

// Add these later
//  final String lastName;
//  final String email;
//  final String phone;

  User(this.firstName);

  factory User.fromJson(Map<String, dynamic> json) =>
      new User(
        json['firstName'] as String,
      );
}
