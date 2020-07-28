import 'user_model.dart';
class Message{
    final User sender;
    final String time;
    final String text;
    final bool isLiked;
    final bool unread;
    Message({
      this.sender,
      this.time,
      this.text,
      this.isLiked,
      this.unread
});
}

final User currentUser =User(
  id: 0,
  name: 'Current User',
  imageUrl:'assets/images/1.jpg'
);
final User greg =User(
    id: 1,
    name: 'Greg',
    imageUrl:'assets/images/1.jpg'
);
final User james =User(
    id: 2,
    name: 'James',
    imageUrl:'assets/images/2.jpg'
);
final User john =User(
    id: 3,
    name: 'John',
    imageUrl:'assets/images/3.jpg'
);
final User olivia =User(
    id: 4,
    name: 'Olivia',
    imageUrl:'assets/images/4.jpg'
);
final User ramos =User(
    id: 5,
    name: 'Ramos',
    imageUrl:'assets/images/5.jpg'
);
final User hazard =User(
    id: 6,
    name: 'Hazard',
    imageUrl:'assets/images/6.jpg'
);
final User benzema =User(
    id: 7,
    name: 'Benzema',
    imageUrl:'assets/images/7.jpg'
);

//Fav chat
List<User> favorites =[benzema,hazard,ramos,olivia,greg,james];

//Example chats on home screen
List<Message> chats=[
  Message(
    sender: ramos,
    time: '5:30 PM',
    text: 'hey, What are you doing today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: benzema,
    time: '6:30 PM',
    text: 'hey, How are you bro?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: hazard,
    time: '6:10 PM',
    text: 'hey, I want to play football with you?',
    isLiked: false,
    unread: true,
  ),
];