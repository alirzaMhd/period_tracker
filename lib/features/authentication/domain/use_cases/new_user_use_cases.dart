class NewUserUseCases {
  static int increaseValue(int state) {
    return state++;
  }

  static int decreaseValue(int state) {
    return state--;
  }

  static bool toggleCheckBox(bool state) {
    return !state;
  }
}
