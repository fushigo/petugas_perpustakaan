import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.buku();
                  },
                  child: Text("Buku")
              ),
              const SizedBox(height: 40,),
              ElevatedButton(
                  onPressed: () {
                    controller.peminjaman();
                  },
                  child: Text("Peminjaman")
              ),
            ],
          ),
        )
      ),
    );
  }
}
