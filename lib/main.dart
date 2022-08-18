
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:glub_hidratado/app_widget/app_widget.dart';
import 'package:glub_hidratado/firebase_options.dart';
import 'package:glub_hidratado/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      builder: (context, _) => AppWidget(),
    ),
  );
}
