import 'package:flutter/material.dart';

import 'widgets/custom_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FlyCoinAnimation());
  }
}

class FlyCoinAnimation extends StatefulWidget {
  const FlyCoinAnimation({super.key});

  @override
  State<FlyCoinAnimation> createState() => FlyCoinAnimationState();
}

class FlyCoinAnimationState extends State<FlyCoinAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Paint & Canvas API"), centerTitle: true),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                btnText: "Basic BG Paint",
                ontap: () {},
              ),
              const SizedBox(
                height: 12,
              ),
              CustomButton(
                btnText: "Polygons",
                ontap: () {},
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
