import 'dart:convert';

UserLoginRequestEntity userLoginRequestEntityFromJson(String str) =>
    UserLoginRequestEntity.fromJson(json.decode(str));

String userLoginRequestEntityToJson(UserLoginRequestEntity data) =>
    json.encode(data.toJson());

class UserLoginRequestEntity {
  UserLoginRequestEntity({
    this.email,
    this.password,
  });

  String email;
  String password;

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}

/// -----------------------------------

UserLoginResponseEntity userLoginResponseEntityFromJson(String str) =>
    UserLoginResponseEntity.fromJson(json.decode(str));

String userLoginResponseEntityToJson(UserLoginResponseEntity data) =>
    json.encode(data.toJson());

class UserLoginResponseEntity {
  UserLoginResponseEntity({
    this.accessToken,
    this.displayName,
    this.channels,
  });

  String accessToken;
  String displayName;
  List<String> channels;

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["access_token"],
        displayName: json["display_name"],
        channels: List<String>.from(json["channels"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "displayName": displayName,
        "channels": List<dynamic>.from(channels.map((x) => x)),
      };
}
