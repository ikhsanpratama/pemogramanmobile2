import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pemogramanmobile_2/screens/home.dart';
import 'package:pemogramanmobile_2/screens/setting.dart';
import 'package:pemogramanmobile_2/screens/tentang.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_opsional_1/tugas_1.dart';

class Tugas extends StatelessWidget {
  final String username;
  const Tugas({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.amber,
          title: const Text(
            "Tugas",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/user.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Ikhsan',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '23552012008',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Beranda'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                selected: true,
                selectedTileColor: Colors.lightBlue,
                enabled: false,
                title: const Text(
                  'Lembar Tugas',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                onTap: () {
                  null;
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Pengaturan'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('Tentang'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TentangScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TugasOpsi1()),
                    );
                  },
                  child: const CupertinoCard(
                    title: 'Tugas Opsional - Counter',
                    icon: Icons.filter_list,
                    color: CupertinoColors.systemTeal,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
            child: Center(
          child: Text("Pemograman Mobile 2",
              style: TextStyle(fontStyle: FontStyle.italic)),
        )),
      ),
    );
  }
}

class CupertinoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const CupertinoCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            size: 36,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
