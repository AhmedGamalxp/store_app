import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store_app/core/utils/app_router.dart';
import 'package:store_app/core/utils/block_observer.dart';
import 'package:store_app/core/utils/services_locator.dart';
import 'package:store_app/core/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:store_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObsServer();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  setupServiceLocator();
  runApp(
    const Marketo(),
  );
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
