import 'package:app_gemini_chat/app/data/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<MessageModel> messages = [
    MessageModel(text: "Hi", isUser: true),
    MessageModel(text: "Hello, what's up ?", isUser: false),
    MessageModel(text: "Great and you ?", isUser: true),
    MessageModel(text: "Great and you ?", isUser: false),
    MessageModel(text: "I'am excelent", isUser: true),
  ];

  TextEditingController inputMessage = TextEditingController();
}