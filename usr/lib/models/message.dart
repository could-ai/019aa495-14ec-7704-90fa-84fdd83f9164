enum MessageSender { user, ai }

class Message {
  final String text;
  final MessageSender sender;
  final DateTime timestamp;

  Message({
    required this.text,
    required this.sender,
    DateTime? timestamp,
  }) : timestamp = timestamp ?? DateTime.now();
}
