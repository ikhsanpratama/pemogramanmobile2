import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_1/home.dart';
import 'package:toastification/toastification.dart';

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
      toastification.show(
          context: context,
          alignment: Alignment.bottomCenter,
          style: ToastificationStyle.flatColored,
          type: ToastificationType.warning,
          showIcon: true,
          icon: const Icon(Icons.warning_amber),
          title: const Text('Username/Password Tidak Boleh Kosong!'),
          showProgressBar: false,
          autoCloseDuration: const Duration(seconds: 3),
          closeButtonShowType: CloseButtonShowType.none);
    } else if (username == 'ikhsan' && password == '23552012008') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomeDashboard(username: username)),
      );
    } else {
      toastification.show(
          context: context,
          alignment: Alignment.bottomCenter,
          style: ToastificationStyle.flatColored,
          type: ToastificationType.error,
          showIcon: true,
          icon: const Icon(Icons.error),
          title: const Text('Username/Password Salah!'),
          showProgressBar: false,
          autoCloseDuration: const Duration(seconds: 3),
          closeButtonShowType: CloseButtonShowType.none);
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.amber,
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
                  style: const TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.bold),
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Username : ikhsan',
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.people_alt_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.bold),
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password : 23552012008',
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.key,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: ElevatedButton.icon(
                  onPressed: _login,
                  icon: const Icon(Icons.login, color: Colors.black),
                  label: const Text(
                    'M A S U K',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    minimumSize: const Size(double.infinity, 50),
                    elevation: 8,
                    backgroundColor: Colors.white70,
                  ),
                )),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
            color: Colors.lightBlue,
            child: Center(
              child: Text(
                "Pemograman Mobile 2",
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
              ),
            )),
      ),
    );
  }
}
