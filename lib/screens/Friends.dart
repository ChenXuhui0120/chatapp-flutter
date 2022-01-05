import 'package:chatapp/models/friendsModel.dart';
import 'package:chatapp/widgets/friendsList.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPage createState() => _FriendsPage();
}

class _FriendsPage extends State<FriendsPage> {
  List<Friends> friends = [
    Friends(name: "Philip Fox",imageURL: "images/image4.png"),
    Friends(name: "Debra Hawkins",imageURL: "images/image5.png" ),
    Friends(name: "Glady's Murphy",imageURL: "images/image2.png" ),
    Friends(name: "Jane Russel", imageURL: "images/image1.png"),
    Friends(name: "Glady's Murphy",imageURL: "images/image2.png"),
    Friends(name: "Jorge Henry",imageURL: "images/image3.png"),
    Friends(name: "Jorge Henry",  imageURL: "images/image3.png" ),
    Friends(name: "Philip Fox",  imageURL: "images/image4.png"),
    Friends(name: "Debra Hawkins", imageURL: "images/image5.png"),
    Friends(name: "Jacob Pena", imageURL: "images/image6.png"),
    Friends(name: "Andrey Jones", imageURL: "images/image7.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white10,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
                children:[ Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text("Friends",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),]
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListView.builder(
              itemCount: friends.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return FriendsList(
                  name: friends[index].name,
                  imageUrl: friends[index].imageURL,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

