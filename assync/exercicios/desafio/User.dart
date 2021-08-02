import 'dart:convert';
import 'Address.dart';
import 'Company.dart';

class User {
  int? id;
  String? name;
  String? username;
  String? email;
  Address address;
  String? phone;
  String? website;
  Company company;

  User({
    this.id,
    this.name,
    this.username,
    this.email,
    required this.address,
    this.phone,
    this.website,
    required this.company,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: Address.fromJson(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address.toJson(),
        "phone": phone,
        "website": website,
        "company": company.toJson(),
      };
}
