import 'package:gmail_clone/models/user_model.dart';

class Email {
  final User sender;
  final String subject;
  final String message;
  final String time;
  final bool unread;

  Email({
    this.sender,
    this.subject,
    this.message,
    this.time,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Henok Brhane',
  email: 'henok@gmail.com',
  imageUrl:
      'https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=800&q=70',
);

// USERS
final User efrem = User(
  id: 1,
  name: 'Efrem Haile',
  email: 'efrem@gmail.com',
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRY_sIcZ9rAz04-0BWJ_WHJzytF1_UpPtRLmg&usqp=CAU',
);
final User fnan = User(
  id: 2,
  name: 'Fnan Sium',
  email: 'fnan@gmail.com',
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ7h-f5HkbyVATME3SHaEfSMIUDGEIodfigCQ&usqp=CAU',
);
final User john = User(
  id: 3,
  name: 'John Tsegay',
  email: 'john@gmail.com',
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQhAKSpcibq9TfZhn2cUY3-yzKUvFuAaSI3VA&usqp=CAU',
);
final User alex = User(
  id: 4,
  name: 'Alex Mebrahtu',
  email: 'alex@gmail.com',
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTq2hiMM4LY3J-nPX9QFO0URL2siUWeJP-t-A&usqp=CAU',
);
final User samrawit = User(
  id: 5,
  name: 'Samrawit Tekeste',
  email: 'sami@gmail.com',
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQhFQfk111jVKhvYZxl8qhNOF5By-T05EFqJA&usqp=CAU',
);

// EXAMPLE CHATS ON HOME SCREEN
List<Email> emails = [
  Email(
    sender: efrem,
    time: '5:30 PM',
    subject: 'Subjects text',
    message: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Email(
    sender: fnan,
    time: '4:30 PM',
    subject: 'Subjects text',
    message: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Email(
    sender: john,
    time: '3:30 PM',
    subject: 'Subjects text',
    message: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
  Email(
    sender: alex,
    time: '2:30 PM',
    subject: 'Subjects text',
    message: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Email(
    sender: samrawit,
    time: '1:30 PM',
    subject: 'Subjects text',
    message: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
  //repeated
  Email(
    sender: efrem,
    time: '5:30 PM',
    subject: 'Subjects text',
    message: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Email(
    sender: fnan,
    time: '4:30 PM',
    subject: 'Subjects text',
    message: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Email(
    sender: john,
    time: '3:30 PM',
    subject: 'Subjects text',
    message:
        'Hey, how\'s it going? What did you do today? dasjdiosjadiojsijdioajsiod',
    unread: false,
  ),
  Email(
    sender: alex,
    time: '2:30 PM',
    subject: 'Subjects text',
    message:
        'Hey, how\'s it going? What did you do today? dajdkjskdjskdjskjdkjakjadsk',
    unread: true,
  ),
  Email(
    sender: samrawit,
    time: '1:30 PM',
    subject: 'Subjects text',
    message: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
// List<Message> messages = [
//   Message(
//     sender: james,
//     time: '5:30 PM',
//     text: 'Hey, how\'s it going? What did you do today?',
//     unread: true,
//   ),
//   Message(
//     sender: currentUser,
//     time: '4:30 PM',
//     text: 'Just walked my doge. She was super duper cute. The best pupper!!',
//     unread: true,
//   ),
//   Message(
//     sender: james,
//     time: '3:45 PM',
//     text: 'How\'s the doggo?',
//     unread: true,
//   ),
//   Message(
//     sender: james,
//     time: '3:15 PM',
//     text: 'All the food',
//     unread: true,
//   ),
//   Message(
//     sender: currentUser,
//     time: '2:30 PM',
//     text: 'Nice! What kind of food did you eat?',
//     unread: true,
//   ),
//   Message(
//     sender: james,
//     time: '2:00 PM',
//     text: 'I ate so much food today.',
//     unread: true,
//   ),
// ];
