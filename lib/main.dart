import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_router.dart';
import 'package:store_app/core/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:store_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Marketo());
}

class Marketo extends StatelessWidget {
  const Marketo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: myTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
