import 'package:flutter/material.dart';
import 'package:pemograman_mobile_2/auth/login.dart';
import 'tugas_1.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.amber,
          title: const Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold),),
          leading: const Icon(Icons.dashboard),
        ),
        body:  ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Selamat Datang, "),
                      Text(username, style: const TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const Divider(),
                  Container(
                    height: 50,
                    alignment: Alignment.topLeft,
                    child: TextButton.icon(
                      onPressed: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const Tugas1()),
                        );}, 
                      icon: const Icon(Icons.arrow_circle_right_sharp), 
                      label: const Text("Tugas Opsional Counter")),
                  ),
                  Container(
                    height: 50,
                    alignment: Alignment.topLeft,
                    child: TextButton.icon(
                      onPressed: (){
                        Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );}, 
                      icon: const Icon(Icons.arrow_circle_right_sharp), 
                      label: const Text("Tugas 1 - Login/Dashboard")),
                  ),
                  Container(
                    height: 50,
                    alignment: Alignment.topLeft,
                    child: TextButton.icon(
                      onPressed: null, 
                      icon: const Icon(Icons.arrow_circle_right_sharp), 
                      label: const Text("Tugas 2")),
                  ),
                ],
              ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.amber,
          child: Center(
            child: Text("Pemograman Mobile 2", style: TextStyle(fontStyle: FontStyle.italic)),
          )
        ),
      ),
    );
  }
}