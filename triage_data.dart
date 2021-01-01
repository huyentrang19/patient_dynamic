// Superclasses ----------------------------------------------------------------

class Category {
  bool isAmbulatory;
  bool isSpontaneousBreathingPresent;

  Category(this.isAmbulatory, this.isSpontaneousBreathingPresent);
}

class Category2 extends Category {
  bool isBreathingFrequencyPerMinute;
  bool isCirculation;

  Category2(this.isBreathingFrequencyPerMinute, this.isCirculation)
      : super(false, true);
}

// Subclasses ------------------------------------------------------------------

class CategoryT1A extends Category {
  bool isAfterOpeningAirways = true;

  CategoryT1A(this.isAfterOpeningAirways) : super(false, false);
}

class CategoryT1B extends Category {
  bool isBreathingFrequencyPerMinute = true;

  CategoryT1B(
      this.isBreathingFrequencyPerMinute,
      ) : super(false, true);
}

class CategoryT1C extends Category2 {
  CategoryT1C() : super(false, true);
}

class CategoryT1D extends Category2 {
  bool isNeurology = false;
  CategoryT1D(this.isNeurology) : super(false, false);
}

class CategoryT2 extends Category2 {
  bool isNeurology = true;
  CategoryT2(this.isNeurology) : super(false, false);
}

class CategoryT3 extends Category {
  CategoryT3() : super(true, null);
}

class CategoryT4 extends Category {
  bool isAfterOpeningAirways = false;

  CategoryT4(this.isAfterOpeningAirways) : super(false, false);
}
