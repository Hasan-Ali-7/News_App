import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'logic/cubit.dart';
import 'logic/states.dart';
import 'shared/cache/hive.dart';
import 'test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('hiveBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {},
        builder: (context, state) {

          NewsCubit cubit = NewsCubit.get(context);
          bool? hive_mode = HiveMethods().get('darkMode');
          cubit.isDark = hive_mode ?? false;
          
          // cubit
          //   ..fetchAllArticle()
          //   ..fetchTechArticle()
          //   ..fetchEconomyArticle()
          //   ..fetchScienceArticle()
          //   ..fetchSportArticle();

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            
            theme: ThemeData(
                primarySwatch: Colors.deepOrange,
                scaffoldBackgroundColor: Colors.grey[300],
                appBarTheme:const AppBarTheme(
                  backgroundColor: Color.fromARGB(255, 230, 102, 27),
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Color.fromARGB(255, 230, 102, 27),
                    statusBarIconBrightness: Brightness.light,
                  ),
                  titleTextStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  iconTheme: IconThemeData(
                    size: 35,
                    color: Colors.white
                  ),
                ),
                bottomNavigationBarTheme:const  BottomNavigationBarThemeData(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.deepOrange,
                  elevation: 55,
                )),
            
            darkTheme: ThemeData(
                primarySwatch: Colors.deepOrange,
                scaffoldBackgroundColor: Colors.black,
                appBarTheme: const AppBarTheme(
                  backgroundColor: Color.fromARGB(255, 230, 102, 27),
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Color.fromARGB(255, 230, 102, 27),
                    statusBarIconBrightness: Brightness.light,
                  ),
                  titleTextStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  iconTheme: IconThemeData(
                    size: 35,
                    color: Colors.white
                  ),
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  backgroundColor: Colors.grey[900],
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.deepOrange,
                  unselectedItemColor: Colors.white,
                  elevation: 55,
                )),
            
            themeMode: cubit.isDark
                ? ThemeMode.dark
                : ThemeMode.light,
            
            home: Test(),
          );
        },
      ),
    );
  }
}
