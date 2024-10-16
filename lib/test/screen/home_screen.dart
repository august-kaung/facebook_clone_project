// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:provider/provider.dart';
// import 'package:testing_app/classes/class_one.dart';
// import 'package:testing_app/classes/class_two.dart';
// import 'package:testing_app/provider.dart';
// import 'package:testing_app/screen/details_screen.dart';
// import 'package:testing_app/service_loactor.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Battery battery = serviceLocator.get<Battery>();
//     Petroleum petroleum = serviceLocator.get<Petroleum>();
//     return Scaffold(
//       floatingActionButton: Row(
//         children: [
//           ButtonOne(hashCode: hashCode),
//           ButtonTwo(hashCode: hashCode),
//           ButtonAddress(hashCode: hashCode),
//           ButtonClear(hashCode: hashCode),
//           const SizedBox(
//             child:  Text("This is hippopotamus"),
//           ),
//           FloatingActionButton(onPressed: () {
//             setState(() {});
//           })
//         ],
//       ),
//       body: Center(
//         child: Row(
//           children: [
//             Consumer<TestProvider>(builder: (context, provider, __) {
//               return Text("Name is ${provider.getName}");
//             }),
//             IconButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (_) => DetailsPage()));
//                 },
//                 icon: const Icon(Icons.next_plan))
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
//       //  var a= context.read<TestProvider>();
//       var a = Provider.of<TestProvider>(context, listen: false);
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
//       //  var b= context.read<TestProvider>();
//       var b = Provider.of<TestProvider>(context, listen: false);
//       b.putAge("22");
//       // Car car2 =serviceLocator.get<Car>();
//       Car car2 = Car();
//       car2.drive();
//     });
//   }
// }
// class ButtonAddress extends StatelessWidget {
//   const ButtonAddress({
//     super.key,
//     required this.hashCode,
//   });
//   final int hashCode;
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(onPressed: () {
//       //  var b= context.read<TestProvider>();
//       var b = Provider.of<TestProvider>(context, listen: false);
//       b.putAddress("Yangon");
//       // Car car2 =serviceLocator.get<Car>();
//       Car car2 = Car();
//       car2.drive();
//     });
//   }
// }
// class ButtonClear extends StatelessWidget {
//   const ButtonClear({
//     super.key,
//     required this.hashCode,
//   });
//   final int hashCode;
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(onPressed: () {
//       //  var b= context.read<TestProvider>();
//       var b = Provider.of<TestProvider>(context, listen: false);
//       b.putClear();
//       // Car car2 =serviceLocator.get<Car>();
//       Car car2 = Car();
//       car2.drive();
//     });
//   }
// }