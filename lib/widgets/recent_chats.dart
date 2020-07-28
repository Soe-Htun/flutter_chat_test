import 'package:chatting_ui/modules/message_model.dart';
import 'package:flutter/material.dart';
class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30))
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)),
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index){
                final Message chat = chats[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(chat.sender.imageUrl),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(chat.sender.name,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold
                                    ),),
                                SizedBox(height: 10),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  //padding: const EdgeInsets.only(left: 5),
                                  child: Text(chat.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ]
                      ),
                      Column(children: <Widget>[
                        Text(chat.time),
                        Text('NEW')
                      ],)
                    ],
                  ),
                );
              },
            ),
          ),
        )
    );
  }
}

