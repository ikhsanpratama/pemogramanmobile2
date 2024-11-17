import 'package:flutter/material.dart';
import 'package:pemogramanmobile_2/screens/setting.dart';
import 'package:pemogramanmobile_2/screens/tentang.dart';
import 'package:pemogramanmobile_2/screens/tugas.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
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
                    'Ikhsan Pratama',
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
              selected: true,
              selectedTileColor: Colors.lightBlue,
              enabled: false,
              title: const Text(
                'Beranda',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              onTap: () {
                null;
              },
            ),
            ListTile(
              leading: const Icon(Icons.file_open),
              title: const Text('Lembar Tugas'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Tugas(
                            username: 'Ikhsan',
                          )),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const Text('Selamat Datang di Aplikasi Pemograman Mobile 2'),
                  const SizedBox(height: 30),
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/user.png'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Ikhsan Pratama',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                  const Text(
                    'ikhsan.pratama@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileInfoRow(
                      icon: Icons.card_membership,
                      label: 'NIM',
                      value: '23552012008'),
                  ProfileInfoRow(
                      icon: Icons.work,
                      label: 'Prodi',
                      value: 'Teknik Informatika'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
          child: Center(
        child: Text("Pemograman Mobile 2",
            style: TextStyle(fontStyle: FontStyle.italic)),
      )),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ProfileInfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 10),
          Text(
            '$label:',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
