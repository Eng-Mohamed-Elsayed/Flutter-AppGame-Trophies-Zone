class CheckedCounter {
  static int counter = 0;
  static int rdr2Counter = 0;
  static int gtaCounter = 0;
  static int lifeIsStrangeCounter = 0;

  set setCounterInc(int i) {
    CheckedCounter.counter++;
    print("counterI  ${CheckedCounter.counter}");
  }

  set setCounterDec(int d) {
    CheckedCounter.counter -= d;
    print("counterD  ${CheckedCounter.counter}");
  }

  int get getCounter {
    return CheckedCounter.counter;
  }

  set setCounterIncRdr(int i) {
    CheckedCounter.counter++;
    print("counterI  ${CheckedCounter.rdr2Counter}");
  }

  set setCounterDecRdr(int d) {
    CheckedCounter.counter -= d;
    print("counterD  ${CheckedCounter.rdr2Counter}");
  }

  int get getCounterRdr {
    return CheckedCounter.rdr2Counter;
  }
}
