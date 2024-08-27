import "dart:io";

void main() {
  // Registrieren/Account anlegen
  // Login
  // Club Steckbrief
  print("Wilkommen bei HappyPlace");
  print(" MIt HappyPlace erleichterst du deine Freizeit Gestallung");
  bool isProgramRunning = true;
  while (isProgramRunning) {
    print("Was möchtest du tun? Programm: (E)xit,(L)ogin,(C)lubsteckbrief.");
    // Eigabe des Users
    String userChoiceInput = stdin.readLineSync()!;

    switch (userChoiceInput) {
      case "e" || "E":
        isProgramRunning = false;
      // User soll sich mit Name und Passwort anmelden können.
      case "l" || "L":
        stdout.write("Gib deinen Username ein:");
        stdin.readLineSync()!;
        stdout.write("Bitte Passwort eingeben");
        stdin.readLineSync()!;
      // Auswahl des Clubs
      case "c" || "C":
        stdout.write("Monkyclub, Hauptstraße 17, 56479 Rennerod");
    }
  }
}
