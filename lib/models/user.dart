class User {
  Map headers = {};

  String name;
  String email;
  String picture;

  User({
    this.name = '',
    this.email = '',
    this.picture = '',
  });

  User updateHeaders(Map headers) {
    this.headers = {
      'authorization':
          headers['authorization'] ?? this.headers['authorization'] ?? '',
    };

    return this;
  }

  factory User.fromNetwork(Map map) {
    return User(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      picture: map['picture'] ?? '',
    );
  }

  factory User.fromMap(Map map) {
    return User(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      picture: map['picture'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'picture': this.picture,
    };
  }
}
