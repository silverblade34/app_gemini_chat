import 'package:app_gemini_chat/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: ListView.builder(
        itemCount: controller.messages.length,
        itemBuilder: (context, index) {
          final message = controller.messages[index];
          return ListTile(
            title: Align(
              alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: message.isUser ? Colors.blue[300] : Colors.grey[300],
                  borderRadius: message.isUser
                      ? const BorderRadius.only(
                          topLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                        )
                      : const BorderRadius.only(
                          topRight: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                        ),
                ),
                child: Text(
                  message.text,
                  style: TextStyle(
                      color: message.isUser ? Colors.white : Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
