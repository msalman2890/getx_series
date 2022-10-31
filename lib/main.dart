import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';
import 'get_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: GetAppRoute().getRoutes(),
      initialRoute: AppRoute.initial,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Into To Get Material App",
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoute.secondPage);
                  // Get.to(SecondPage());
                  // Get.off(SecondPage());
                  // Get.offNamed("/secondPage");
                  // Get.offAll(SecondPage());
                  // Get.offAllNamed("/secondPage");
                  // Get.back();
                },
                child: const Text("Go to Second Page"),
              )
            ],
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Page"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Go Back"),
          ),
        ));
  }
}
