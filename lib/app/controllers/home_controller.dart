import 'package:app_gemini_chat/app/data/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class HomeController extends GetxController {
  final List<MessageModel> messages = [
    MessageModel(text: "Hi", isUser: true),
    MessageModel(text: "Hello, what's up ?", isUser: false),
    MessageModel(text: "Great and you ?", isUser: true),
    MessageModel(text: "Great and you ?", isUser: false),
    MessageModel(text: "I'am excelent", isUser: true),
  ];

  TextEditingController inputMessage = TextEditingController();

    callGeminiModel() async {
    final model = GenerativeModel(
        model: "gemini-pro", apiKey: dotenv.env['GOOGLE_API_KEY']!);
    final prompt = inputMessage.text.trim();
    final content = [Content.text(prompt)];
    final response = await model.generateContent(content);
    print("-------------------------------------");
    print(response.text!);
  }

}