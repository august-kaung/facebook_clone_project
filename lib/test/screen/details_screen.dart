// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:testing_app/classes/class_one.dart';
// import 'package:testing_app/classes/class_two.dart';
// import 'package:testing_app/provider.dart';
// import 'package:testing_app/service_loactor.dart';

// class DetailsPage extends StatelessWidget {
//   const DetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print("built");
//     Battery battery = serviceLocator.get<Battery>();
//     Petroleum petroleum = serviceLocator.get<Petroleum>();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello"),
//       ),
//       floatingActionButton: Row(
//         children: [
//           ButtonOne(hashCode: hashCode),
//           ButtonTwo(hashCode: hashCode),
//         ],
//       ),
//       body: Center(
//         child: Row(
//           children: [
//             Consumer<TestProvider>(builder: (context, provider, __) {
//               return Text("Name is ${provider.getName}");
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ButtonOne extends StatelessWidget {
//   const ButtonOne({
//     super.key,
//     required this.hashCode,
//   });

//   final int hashCode;

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(onPressed: () {
//       var a = context.read<TestProvider>();
//       print("A :: ${a.hashCode}");
//       a.putName("Mg Mg");
//       //  Car car1 =serviceLocator.get<Car>();
//       Car car1 = Car();

//       print("Car1 :: ${car1.hashCode}");
//       car1.drive();
//     });
//   }
// }

// class ButtonTwo extends StatelessWidget {
//   const ButtonTwo({
//     super.key,
//     required this.hashCode,
//   });

//   final int hashCode;

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(onPressed: () {
//       var b = context.read<TestProvider>();
//       print("B :: ${b.hashCode}");

//       b.putName("Mya Mya");
//       // Car car2 =serviceLocator.get<Car>();
//       Car car2 = Car();
//       print("Car2 :: ${car2.hashCode}");
//       car2.drive();
//     });
//   }
// }
