import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.judulController,
                  decoration: const InputDecoration(hintText: "Masukan Judul"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Judul tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.penulisController,
                  decoration: const InputDecoration(hintText: "Masukan Penulis"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Penulis tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.penerbitController,
                  decoration: const InputDecoration(hintText: "Masukan Penerbit"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Penerbit tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.tahunTerbitController,
                  decoration: const InputDecoration(hintText: "Masukan Tahun Terbit"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Tahun Terbit tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() => controller.loading.value?
                CircularProgressIndicator():
                ElevatedButton(onPressed: () {
                  controller.post();
                }, child: Text("Post")))
              ],
            ),
          )
      ),
    );
  }
}
