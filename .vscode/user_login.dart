import 'dart:io';

bool userLogin(String expectedUserName, String expectedUserPassword) {
  bool didUserLogInCorrectly = false;


  String inputUserName = "";
  String inputUserPassword = "";


  stdout.write("Gib deinen Username ein ");
  inputUserName = stdin.readLineSync()!;
  stdout.write("Bitte Passwort eingeben: ");
  inputUserPassword = stdin.readLineSync()!;


  bool isLoginDataCorrect = inputUserName == expectedUserName &&
      inputUserPassword == expectedUserPassword;

  if (isLoginDataCorrect) {
    print("Du hast dich erfolgreich eingeloggt");
    print("");
    didUserLogInCorrectly = true;
  } else {
    print("Bitte versuche es erneut");
    print("");
    didUserLogInCorrectly = false;
  }

  return didUserLogInCorrectly