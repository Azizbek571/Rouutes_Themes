import 'package:flutter/material.dart';
import 'package:routes_themes/routes/routes.dart';

class MainPage extends StatefulWidget {
    MainPage({super.key});


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic result = 'Data to come back';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.secondPage);
              },
              child: const Text('Go to second page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var resultback = await Navigator.of(context).pushNamed(RouteManager.thirdPage, arguments: {
                  'name' : 'Jogn Go'
                 });
                 setState(() {
                   result = resultback;
                 });
              },
              child: const Text('Go to third page'),
            ),
            Text('$result'),
          ],
        ),
      ),
    );
  }
}
