import 'package:flutter/material.dart';
import 'package:pixabay_ota/pixabay_ota.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initPackages(
    baseUrl: "https://pixabay.com/api",
    apiKey: "36596881-30c6859a144b9a03a46032eda",
  );
  const OtaMain(
    home: MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Fetch Images",
          ),
        ),
      ),
    );
  }
}
