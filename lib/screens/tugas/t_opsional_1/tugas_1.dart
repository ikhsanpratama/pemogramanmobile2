import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class TugasOpsi1 extends StatefulWidget {
  const TugasOpsi1({super.key});

  @override
  State<TugasOpsi1> createState() => _TugasOpsi1State();
}

class _TugasOpsi1State extends State<TugasOpsi1> {
  int _counter = 0;

  void _tambah() {
    setState(() {
      _counter++;
    });
  }

  void _kurang() {
    setState(() {
      if (_counter < 1) {
        toastification.show(
            context: context,
            alignment: Alignment.topCenter,
            style: ToastificationStyle.flatColored,
            type: ToastificationType.error,
            showIcon: true,
            icon: const Icon(Icons.error),
            title: const Text('Counter sudah minimal!'),
            showProgressBar: false,
            autoCloseDuration: const Duration(seconds: 3),
            closeButtonShowType: CloseButtonShowType.none);
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          "Tugas Opsional - Counter",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton.filledTonal(
                  onPressed: _kurang,
                  icon: const Icon(Icons.remove),
                  iconSize: 48,
                ),
                Text(
                  '$_counter',
                  style: const TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.amberAccent,
                  ),
                ),
                IconButton.filledTonal(
                  onPressed: _tambah,
                  icon: const Icon(Icons.add),
                  iconSize: 48,
                ),
              ],
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
