import 'package:ppb/providers/auth_provider.dart'as auth;
import 'package:ppb/screen/homescreen.dart';
import 'package:ppb/screen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:ppb/screen/statistic.dart';
import 'package:ppb/widgets/buttomnavigation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'model/add_date.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');


  runApp(
    MultiProvider(
      providers: [
     ChangeNotifierProvider<auth.AuthProvider>(
          create: (_) => auth.AuthProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );

  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simpan Pay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const AuthGuard(),
    );
  }
}
class AuthGuard extends StatelessWidget {
  const AuthGuard({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const NavBar();
        } else {
          return  const LoginScreen();
        }
      },
    );
  }
}
