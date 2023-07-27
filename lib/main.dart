import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'constants/constants.dart';
import 'logic/cubits/appCubit/app_states.dart';
import 'logic/cubits/bloc_observer.dart';
import 'logic/cubits/allCubit/allNewscubit.dart';
import 'logic/cubits/appCubit/app_cubit.dart';
import 'logic/cubits/economyCubit/economyCubit.dart';
import 'logic/cubits/scienceCubit/scienceCubit.dart';
import 'logic/cubits/sportCubit/sportCubit.dart';
import 'logic/cubits/techCubit/techCubit.dart';
import 'logic/hive/hive.dart';
import 'views/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(kNewsBox);
  Bloc.observer = SimpleObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider( create: (context) => App_Cubit(),      ),
        BlocProvider( create: (context) => AllNewsCubit(),      ),
        BlocProvider( create: (context) => TechNewsCubit(),     ),
        BlocProvider( create: (context) => EconomyNewsCubit(),   ),
        BlocProvider( create: (context) => ScienceNewsCubit(),  ),
        BlocProvider( create: (context) => SportNewsCubit(),    ),
      ],
      child: BlocConsumer<App_Cubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'News',
            theme: ThemeData(
              brightness: Brightness.light,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: kColor,
                elevation: 55,
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: Colors.grey[900],
                type: BottomNavigationBarType.fixed,
                selectedItemColor: kColor,
                unselectedItemColor: Colors.white,
                elevation: 55,
              ),
            ),
            themeMode: ( App_Cubit().isDark = HiveMethods().get('darkMode') ?? true )
                ? ThemeMode.dark
                : ThemeMode.light,
            home: Home(),
          );
        }
      ),
    );
  }
}