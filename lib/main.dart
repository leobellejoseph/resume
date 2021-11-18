import 'package:flutter/material.dart';

void main() => runApp(const MainScreen());

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.blue,
        // appBar: AppBar(title: const Text('My Resume')),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              SizedBox(height: 20),
              ProfilePhotoWidget(),
              SizedBox(height: 10),
              Center(
                child: Text('Leobelle Joseph Diano Villocog',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 30)),
              ),
              IntroductionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePhotoWidget extends StatelessWidget {
  const ProfilePhotoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(color: Colors.red)),
        Expanded(
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.person, color: Colors.yellow, size: 80),
          ),
        ),
        Expanded(child: Container(color: Colors.yellow)),
      ],
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          color: Colors.black.withOpacity(0.2),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text('15 year software developer.')),
          ),
        ),
      ),
    );
  }
}
