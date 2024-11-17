import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  final String username;
  const HomeDashboard({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home Screen',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Selamat Datang, '),
              const SizedBox(
                height: 10,
              ),
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Card(
                elevation: 5,
                color: Colors.amberAccent,
                shape: StadiumBorder(
                  side: BorderSide(color: Colors.grey, width: 0.1),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.red,
                      ),
                      title: Text(
                        'PARSED VALUE',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'value "ikhsan" dikirim dari field username pada halaman login.'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
