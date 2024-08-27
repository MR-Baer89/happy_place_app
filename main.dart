import 'dart:io';

void Main() {
  // Registrieren/Account anlegen
  // Login
  // Location Steckbrief
  print("Wilkommen bei HappyPlace");
  print(" MIt HappyPlace erleichterst du deine Freizeit Gestallung");
  bool isProgramRunning = true;
  while (isProgramRunning) {
    print("Was möchtest du tun? Programm Exit, Login, Locationsteckbrief.");
    // Eigabe des Users
    String userChoiceInput = stdin.readLineSync()!;

    switch (userChoiceInput) {
      case "exit" || "Exit":
        isProgramRunning = false;
      // User soll sich mit Name und Passwort anmelden können.
      case "login" || "Login":
        stdout.write("Gib deinen Username ein:");
        stdin.readLineSync()!;
        stdout.write("Bitte Passwort eingeben");
        stdin.readLineSync();
    }
    // Auswahl der Localität
  }
}
