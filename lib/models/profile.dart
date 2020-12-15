import 'dart:convert';

class Profile {
  String id;
  String name, email, password;

  Profile({this.id, this.name, this.email, this.password});

  factory Profile.fromJson(Map<String, dynamic> map) {
    return Profile(
      id: map["id"],
      name: map["name"],
      email: map["email"],
      password: map["password"],
    );
  }

  Map<String, dynamic> toJson(){
    return {"id": id, "name": name, "email": email, "password": password};
  }

  @override
  String toString() {
    return 'Profile{id: $id, name: $name, email: $email, password: $password}';
  }
}

List<Profile> profileFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Profile>.from(data.map((item) => Profile.fromJson(item)));
}

String profileToJson(Profile data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

