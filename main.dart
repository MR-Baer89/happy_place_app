import "dart:io";

List<String> clubs = [
  "Monkyclub Rennerod",
  "Titty Twister Hamburg",
  "Funpark Limburg",
  "Cube Hachenburg",
  "B54 Rennerod",
  "Magic Freilingen"
];
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
        print("Verfügbare Clubs:");
        for (int i = 0; i < clubs.length; i++) {
          print("${i + 1}. ${clubs[i]}");
        }

        stdout.write("Wähle eine Nummer, um den Club Steckbrief anzuzeigen: ");
        int clubChoice = int.parse(stdin.readLineSync()!);

        if (clubChoice > 0 && clubChoice <= clubs.length) {
          print("Du hast gewählt: ${clubs[clubChoice - 1]}");
        } else {
          print("Ungültige Auswahl. Bitte versuche es erneut.");
        }
    }
  }
}
