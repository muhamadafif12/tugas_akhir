import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyel_akhir/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            children: [
              const Text(
                'Selamat Datang di Hotel',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Sudah punya akun? ',
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 140, vertical: 14),
                ),
                onPressed: () {
                  Get.to(const HomePage());
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
