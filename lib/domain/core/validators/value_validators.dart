class ValueValidator {
  static bool validateEmailAddress(String input) {
    const reg = r"""^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$""";
    return RegExp(reg).hasMatch(input) && input.isNotEmpty;
  }

  static bool validatePassword(String input) {
    const upperCaseChars = "QWERTYUIOPASDFGHJKLZXCVBNM";
    return input.length >= 6 &&
        upperCaseChars.contains(input[0]) &&
        RegExp(r"^[a-zA-Z0-9]+$").hasMatch(input);
  }

  static bool validateName(String input) {
    const reg = r"""[^()[\]{}*&^%$#@!1234657980]+$""";
    return input.length >= 2 && RegExp(reg).hasMatch(input) && input.isNotEmpty;
  }
  //validate phone numbers in Egypt
  // so it must start with 00201/+201 and phone number length must be 11
  static bool validatePhone(String input) {
    const regEg = r"""^(00201|\+201|01)(0|1|2|5)([0-9]{8})$""";
    return RegExp(regEg).hasMatch(input);
  }
}
