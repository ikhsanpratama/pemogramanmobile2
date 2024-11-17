import 'package:flutter/material.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_uts/auth/login.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_uts/screens/about.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_uts/screens/opname.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_uts/screens/perangkat.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_uts/screens/status.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_uts/screens/transaksi.dart';

class HomeUts extends StatelessWidget {
  final List<Map<String, dynamic>> gridItems = [
    {
      'title': 'Status Perangkat',
      'icon': Icons.pie_chart_sharp,
      'color': Colors.lightBlue,
      'page': const StatusPerangkat()
    },
    {
      'title': 'Transaksi',
      'icon': Icons.transform,
      'color': Colors.amber,
      // ignore: prefer_const_constructors
      'page': TransaksiPerangkat()
    },
    {
      'title': 'Jadwal Opname',
      'icon': Icons.calendar_month,
      'color': Colors.green,
      'page': const OpnamePerangkat()
    },
  ];
  final String username;
  HomeUts({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/user.png'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    username,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Administrator',
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
              leading: const Icon(Icons.devices),
              title: const Text('Perangkat'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Perangkat()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUts()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              iconColor: Colors.red,
              textColor: Colors.red,
              title: const Text('Keluar'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen2()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            final item = gridItems[index];
            return Card(
              color: item['color'],
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => item['page']),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item['icon'],
                      size: 50,
                      color: Colors.white,
                      applyTextScaling: true,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item['title'],
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}