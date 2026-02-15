class User {
  final int _userId;
  String _name;
  String _email;
  bool _isOnline;
  DateTime _lastSeen;

  User({
    required int userId,
    required String name,
    required String email,
    bool isOnline = false,
  })  : _userId = userId,
        _name = name,
        _email = email,
        _isOnline = isOnline,
        _lastSeen = DateTime.now() {
    if (name.length <= 2) {
      throw Exception("Name too short");
    }
    if (!email.contains('@')) {
      throw Exception("Invalid email");
    }
  }

  int get userId => _userId;
  String get name => _name;
  String get email => _email;
  bool get isOnline => _isOnline;
  DateTime get lastSeen => _lastSeen;


  set name(String value) {
    if (value.length > 2) {
      _name = value;
    }
  }

  set email(String value) {
    if (value.contains('@')) {
      _email = value;
    }
  }

  set isOnline(bool value) {
    _isOnline = value;
    if (!value) {
      _lastSeen = DateTime.now();
    }
  }
}

void main() {
  User user = User(
    userId: 21,
    name: 'Ayan Javed',
    email: 'ayanjaved@gmail.com',
  );

  user.isOnline = true;
  user.isOnline = false;

  print(user.name);
  print(user.email);
  print(user.isOnline);
  print(user.userId);
  print(user.lastSeen);
}
