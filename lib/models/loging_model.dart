class LogingModel {
  String? id;
  String? name;
  String? username;
  String? photo;
  String? token;

  // Construct Named prameters
  LogingModel({this.id, this.name, this.username, this.photo, this.token});

  // Changes Our Model  to Json data
  factory LogingModel.fromJson(Map<String, dynamic> json) {
    return LogingModel(
        id: json['_id'],
        name: json['name'],
        username: json['username'],
        photo: json['photo'],
        token: json['token']);
  }

  // Changes the json data to modal
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['_id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['photo'] = photo;
    data['token'] = token;
    return data;
  }

  // -------------------------- We Need to send Our Request Using http-------------------------
}
