import 'dart:io';

String? value1, value2;
void main() {
  if (code()) {
    stdout.write("Do you want to start again? yes/no : ");
    String? choice = stdin.readLineSync();
    switch (choice) {
      case 'yes':
        code();
      case 'no':
        break;

      default:
        print("Error");
    }
  }
}

bool code() {
  print(
      "Please Enter number \n 1) M to Km \n 2) Km to M \n 3) Ft to In \n 4) In to Ft \n 5) Cm to M \n 6) M to Cm");
  stdout.write("Enter number: ");
  value2 = stdin.readLineSync();

  switch (value2) {
    case '1':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(meter_kilometer(value3));
    case '2':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(kilometer_meter(value3));
    case '3':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(feet_inches(value3));
    case '4':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(inches_feet(value3));
    case '5':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(cm_meter(value3));
    case '6':
      stdout.write(" Value: ");
      value1 = stdin.readLineSync();
      double value3 = double.tryParse(value1!) ?? 0.0;
      //meter_kilometer(value3);
      print(meter_cm(value3));
    default:
      print("Error");
  }
  return true;
}

bool inputs() {
  stdout.write("Enter value here: ");
  value1 = stdin.readLineSync();
  return true;
}

double meter_kilometer(double value) {
  //1
  double km = value / 1000;
  return km;
}

double kilometer_meter(double value) {
  //2
  double m = value * 1000;
  return m;
}

double feet_inches(double value) {
  //3
  double inc = value * 12;
  return inc;
}

double inches_feet(double value) {
  //4
  double ft = value / 12;
  return ft;
}

double cm_meter(double value) {
  //5
  double m = value / 100;
  return m;
}

double meter_cm(double value) {
  //6
  double cm = value * 100;
  return cm;
}
