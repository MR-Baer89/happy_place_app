import 'dart:io';
import '.vscode/functions.dart';

void main() {
  print("Willkommen bei HappyPlace");
  bool isUserLoggedIn = false;

  // Hauptschleife für die Benutzerinteraktion
  while (true) {
    if (!isUserLoggedIn) {
      print(
          "\nBitte logge dich ein (oder gib 'exit' ein, um das Programm zu beenden).");

      stdout.write("Benutzername: ");
      String username = stdin.readLineSync()!;

      if (username.toLowerCase() == "exit") {
        break;
      }

      stdout.write("Passwort: ");
      String password = stdin.readLineSync()!;

      isUserLoggedIn = userLogin(users, username, password);

      if (!isUserLoggedIn) {
        print("Falscher Benutzername oder Passwort. Versuche es erneut.");
      }
    } else {
      print("\nWas möchtest du tun?");
      print("(1) Club Steckbrief anzeigen");
      print("(2) Logout");
      print("(3) Programm beenden");

      stdout.write("Wähle eine Option: ");
      String choice = stdin.readLineSync()!;

      if (choice == "1") {
        print("\nVerfügbare Clubs:");
        for (int i = 0; i < clubs.length; i++) {
          print("${i + 1}. ${clubs[i]}");
        }

        stdout.write("Wähle eine Clubnummer, um den Steckbrief zu sehen: ");
        int clubChoice = int.parse(stdin.readLineSync()!);

        if (clubChoice > 0 && clubChoice <= clubs.length) {
          print("\nDu hast den Club gewählt: ${clubs[clubChoice - 1]}");
        } else {
          print("Ungültige Auswahl. Bitte versuche es erneut.");
        }
      } else if (choice == "2") {
        isUserLoggedIn = false;
        print("Du wurdest ausgeloggt.");
      } else if (choice == "3") {
        print("Programm wird beendet.");
        break;
      } else {
        print("Ungültige Auswahl. Bitte versuche es erneut.");
      }
    }
  }
}
