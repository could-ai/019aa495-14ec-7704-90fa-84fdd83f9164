import 'dart:async';

class AiService {
  // Simulate a network delay and return a response
  Future<String> getAnswer(String question) async {
    await Future.delayed(const Duration(seconds: 1));
    
    final lowerQuestion = question.toLowerCase();
    
    if (lowerQuestion.contains('hello') || lowerQuestion.contains('hi')) {
      return "Hello! I am CouldAI. How can I help you today?";
    } else if (lowerQuestion.contains('name')) {
      return "My name is CouldAI, your virtual assistant.";
    } else if (lowerQuestion.contains('time')) {
      return "I don't have a watch, but it's always time to learn something new!";
    } else if (lowerQuestion.contains('weather')) {
      return "I can't check the window, but I hope it's sunny wherever you are!";
    } else {
      return "That's an interesting question about \"$question\". As an AI, I can help answer questions, write text, and assist with various tasks. What else would you like to know?";
    }
  }
}
