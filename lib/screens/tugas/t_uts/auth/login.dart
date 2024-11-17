import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pemogramanmobile_2/screens/tugas/t_uts/home.dart';
import 'package:toastification/toastification.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});
  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
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
    } else if (username == 'admin' && password == 'gudang') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeUts(username: username)),
      );
    } else {
      toastification.show(
          context: context,
          alignment: Alignment.bottomCenter,
          style: ToastificationStyle.flatColored,
          type: ToastificationType.error,
          showIcon: true,
          icon: const Icon(Icons.dangerous),
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
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Semi-transparent overlay
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              const Center(
                  child: Text(
                "IT INVENTORY MOBILE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 20.h,
              ),
              const Center(
                child: CircleAvatar(
                  // radius: 100,
                  minRadius: 60,
                  maxRadius: 100,
                  backgroundImage: AssetImage('assets/inventory.png'),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Card(
                color: Colors.transparent,
                borderOnForeground: true,
                elevation: 10,
                child: Column(
                  children: [
                    TextFormField(
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      controller: _usernameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        hintText: 'Username : admin',
                        hintStyle: const TextStyle(color: Colors.blueGrey),
                        prefixIcon:
                            const Icon(Icons.person, color: Colors.blue),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      controller: _passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        hintText: 'Password : gudang',
                        hintStyle: const TextStyle(color: Colors.blueGrey),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                  child: ElevatedButton.icon(
                onPressed: _login,
                icon: const Icon(Icons.verified, color: Colors.white),
                label: const Text(
                  'M A S U K',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size(double.infinity, 10),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    toastification.show(
                        context: context,
                        alignment: Alignment.bottomCenter,
                        style: ToastificationStyle.flatColored,
                        type: ToastificationType.success,
                        showIcon: true,
                        icon: const Icon(Icons.tips_and_updates),
                        title: const Text(
                          'Segera Minum Vitamin Penambah Daya Ingat :)',
                          style: TextStyle(fontSize: 12),
                        ),
                        showProgressBar: false,
                        autoCloseDuration: const Duration(seconds: 3),
                        closeButtonShowType: CloseButtonShowType.none);
                  },
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'poppin'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
