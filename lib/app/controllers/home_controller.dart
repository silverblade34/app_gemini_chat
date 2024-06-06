import 'package:app_gemini_chat/app/data/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class HomeController extends GetxController {
  RxList<MessageModel> messages = RxList([]);

  TextEditingController inputMessage = TextEditingController();

  callGeminiModel() async {
    final inputChat = inputMessage.text;
    inputMessage.text = "";
    messages.add(MessageModel(text: inputChat, isUser: true));
    final model = GenerativeModel(
        model: "gemini-pro", apiKey: dotenv.env['GOOGLE_API_KEY']!);
    final prompt = inputChat.trim();
    final content = [Content.text(prompt)];
    final response = await model.generateContent(content);
    messages.add(MessageModel(text: response.text!, isUser: false));
  }
}
