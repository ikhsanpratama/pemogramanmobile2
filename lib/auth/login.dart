import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pemograman_mobile_2/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
      String username = _usernameController.text;
      String password = _passwordController.text;

      if (username == '' && password == '') {
          Fluttertoast.showToast(
            msg: "Username/Password Tidak Boleh Kosong!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }else if (username == 'ikhsan' && password == '23552012008') {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(username: username)),);
      } else {
        Fluttertoast.showToast(
            msg: "Username/Password salah!",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
    }

  @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      _usernameController.dispose();
      _passwordController.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Image.asset(
                  "assets/flutter.png",
                  height: 150.h,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username : ikhsan',
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.people_alt_outlined,
                          color: Colors.black,
                        ), // icon is 48px widget.
                      ),
                    ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password : 23552012008',
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.key,
                          color: Colors.black,
                        ), // icon is 48px widget.
                      ),
                    ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: 
                  ElevatedButton.icon(
                    onPressed: _login,
                    icon: const Icon(Icons.login_sharp, color: Colors.black,),
                    label: const Text('m a s u k', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, letterSpacing: 2.0, color: Colors.black,),),
                    style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),),
                  )
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.amber,
          child: Center(
            child: Text("Pemograman Mobile 2", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
          )
        ),
      ),
    );
  }
}