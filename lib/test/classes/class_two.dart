// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:testing_app/classes/class_one.dart';

abstract class Engine {
  void start();
}

class Battery implements Engine {
  @override
  void start() {
    print("This is Battery");
  }

  Battery() {
    print('ticked batt');
  }
  String status = "Battery";
}

class Petroleum implements Engine {
  int hp;
  Petroleum({
    required this.hp,
  }) {
    print('tikced petroleum');
  }
  String status = "Petroleum";
  @override
  void start() {
    print("This is Petroleum and has $hp");
  }
}
