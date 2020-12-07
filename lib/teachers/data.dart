import 'package:meta/meta.dart';

class Chat {
  final String username;
  final String message;

  const Chat({
    @required this.username,
    @required this.message,
  });
}

class Data {
  static const chats = <Chat>[
    Chat(
      username: 'Tom', message: 'Thank You and have a nice day .'
    ),
    Chat(
      username: 'Marie Luise', message: 'May I know do you have free time at this afternoon?'
    ),
    Chat(
      username: 'Kelly', message: 'Can I have more exercises to do for my upcoming exams?'
    ),
    Chat(
      username: 'Eama', message: 'I would like to cancel the schedule this afternoon due to some personal issues.'
    ),
    Chat(
      username: 'Yuki', message: 'I will try my best in the mock exam. '
    ),
  ];
}