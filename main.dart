import 'dart:io';

List<String> clubs = [
  "Cocktailba",
  "Shishabar",
  "Disco",
  "Irishpub",
  "Monkyclub"
];

void main() {
  // Registrieren/Account anlegen
  // Login
  // Club Steckbrief
  print("Wilkommen bei HappyPlace");
  print(" MIt HappyPlace erleichterst du deine Freizeit Gestallung");
  bool isProgramRunning = false;
  while (isProgramRunning) {
    print("Was möchtest du tun? Programm (E)xit, (L)ogin, (C)lubsteckbrief.");
    // Eigabe des Users
    String userChoiceInput = stdin.readLineSync()!;

    switch (userChoiceInput) {
      case "e" || "E":
        isProgramRunning = true;
      // User soll sich mit Name und Passwort anmelden können.
      case "l" || "L":
        stdout.write("Gib deinen Username ein:");
        stdin.readLineSync()!;
        stdout.write("Bitte Passwort eingeben");
        stdin.readLineSync();
      // Auswahl des Clubs
      case "c" || "C":
        stdout.write("Willkommen zum Clubauswahlprogramm!");
        stdout.write("Bitte wähle einen Club aus der folgenden Liste:");
    }
  }
  for (int i = 0; i < clubs.length; i++) {
    print('${i + 1}. ${clubs[i]}');
  }

  stdout.write('Gib die Nummer des gewünschten Clubs ein: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? choice = int.tryParse(input);

    if (choice != null && choice > 0 && choice <= clubs.length) {
      print('Du hast den ${clubs[choice - 1]} ausgewählt.');
    } else {
      print(
          'Ungültige Auswahl. Bitte starte das Programm neu und wähle eine gültige Nummer.');
    }
  } else {
    print(
        'Ungültige Eingabe. Bitte starte das Programm neu und wähle eine gültige Nummer.');
  }
}
