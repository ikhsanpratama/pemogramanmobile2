import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key});

  @override
  State<Tugas1> createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  int _counter = 0;

  void _tambah() {
    setState(() {
      _counter++;
    });
  }

  void _kurang() {
    setState(() {
      if(_counter < 1){        
        Fluttertoast.showToast(
            msg: "Counter sudah minimal!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );           
      }else{
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
        title: const Text("Tugas Opsional - Counter", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton.filledTonal(onPressed: _kurang, icon: const Icon(Icons.remove), iconSize: 48,),
                Text('$_counter', style: const TextStyle(fontSize: 72, fontWeight: FontWeight.bold, letterSpacing: 2.0, color: Colors.amberAccent,),),
                IconButton.filledTonal(onPressed: _tambah, icon: const Icon(Icons.add), iconSize: 48,),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
          color: Colors.amber,
          child: Center(
            child: Text("Pemograman Mobile 2", style: TextStyle(fontStyle: FontStyle.italic)),
          )
        ),     
    );
  }
}