import 'package:chatbot/Features/Chat/data/models/message_model.dart';
import 'package:chatbot/core/utils/app_strings.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatRemoteDataSource {
  Future<MessageModel> talkWithGemini(String prompt) async {
    final model =
        GenerativeModel(model: 'gemini-pro', apiKey: AppStrings.geminiApiKey);
    final response = await model.generateContent([
      Content.text(prompt),
    ]);
    print(response.text);
    return MessageModel(
        message: response.text.toString(), isUser: false, date: DateTime.now());
  }
}
