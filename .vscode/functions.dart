import 'dart:io';

class User {
  final String username;
  final String password;

  User(this.username, this.password);
}

class Club {
  final String name;
  final String city;

  Club(this.name, this.city);

  @override
  String toString() {
    return "$name in $city";
  }
}

// Liste aller registrierten Benutzer
List<User> users = [User("Mr. Bär", "baer1234"), User("Miss Bär", "baer5678")];

// Liste aller Clubs
List<Club> clubs = [
  Club("Monkyclub", "Rennerod"),
  Club("Titty Twister", "Hamburg"),
  Club("Funpark", "Limburg"),
  Club("Cube", "Hachenburg"),
  Club("B54", "Rennerod"),
  Club("Magic", "Freilingen")
];

bool userLogin(List<User> users, String username, String password) {
  // Versuche den Benutzer in der Liste zu finden
  try {
    User user = users.firstWhere((user) => user.username == username);

    // Überprüfe, ob das Passwort korrekt ist
    if (user.password == password) {
      print("Erfolgreich eingeloggt!");
      return true;
    } else {
      print("Ungültige Anmeldedaten.");
      return false;
    }
  } catch (e) {
    // Benutzer wurde nicht gefunden
    print("Ungültige Anmeldedaten.");
    return false;
  }
}
