import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:local_database/pages/create/controller.dart';

class CreatePage extends GetView<CreateController>{
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0,left: 20,right: 20),
        child: Column(
          children: [
            TextField(
              controller: controller.titlecontroller,
              decoration: const InputDecoration(
                  hintText: "Title",border: OutlineInputBorder()
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            TextField(
              controller: controller.contentcontroller,
              decoration: const InputDecoration(
                  hintText: "Content",border: OutlineInputBorder()
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                controller.onSubmit();
              },
              child: const Text("Submit"),
            ),

          ],
        ),
      ),
    );
  }
}