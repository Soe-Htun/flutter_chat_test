import 'package:flutter/material.dart';
import 'package:chatting_ui/modules/message_model.dart';
class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Favourite Contacts',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1
                      ),),
                    IconButton(icon: Icon(
                        Icons.more_horiz
                    ),
                      iconSize: 30,
                      color: Colors.blueGrey,
                      onPressed: (){

                      },
                    )
                  ]
              )
          ),
          Container(
            height: 120,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[

                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(favorites[index].imageUrl)
                        ),
                        SizedBox(height: 6),
                        Text(favorites[index].name,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),)
                      ],
                    ),
                  );
                },
          )
          )]

      ),
    );
  }
}

