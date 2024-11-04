// main.dart
import 'package:facebook_clone_project/config/theme/bloc/theme_bloc.dart';
import 'package:facebook_clone_project/config/theme/bloc/theme_event.dart';
import 'package:facebook_clone_project/config/theme/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          ThemeData themeData = ThemeData.light();
          if (themeState is DarkThemeState) {
            themeData = themeState.themeData;
          } else if (themeState is LightThemeState) {
            themeData = themeState.themeData;
          }

          return MaterialApp(
            title: 'Flutter Theme with BLoC',
            theme: themeData,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
// home_screen.dart
 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (c)=>NewPage()));}),
      appBar: AppBar(title: Text('Theme with BLoC')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<ThemeBloc>().add(ToggleThemeEvent());
          },
          child: Text('Toggle Theme'),
        ),
      ),
    );
  }
}
class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("Rebuildddd");
    return Scaffold(backgroundColor: Colors.red,body: Center(child: Text("Hello"),),);
  }
}
