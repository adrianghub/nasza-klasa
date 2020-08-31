import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nasza_klasa_ui/models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(children: [
        Row(children: [
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.grey[200],
            backgroundImage: 
            CachedNetworkImageProvider(currentUser.imageUrl),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              decoration: 
                InputDecoration.collapsed(hintText: 'Jak skutecznie jabłko?'),
            ),
          )
        ],
        ),
        const Divider(height: 10.0, thickness: 0.5,),
        Container(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(onPressed: () => print('Oglądaj na zywo'), 
              icon: const Icon(
                Icons.videocam,
                color: Colors.teal,
                ), 
                label: Text('Kam')
                ),
                const VerticalDivider(width: 8.0),
                FlatButton.icon(onPressed: () => print('Oglądaj na zywo'), 
              icon: const Icon(
                Icons.computer_rounded,
                color: Colors.teal,
                ), 
                label: Text('Lap')
                ),
                const VerticalDivider(width: 8.0),
                FlatButton.icon(onPressed: () => print('Oglądaj na zywo'), 
              icon: const Icon(
                Icons.bookmarks,
                color: Colors.teal,
                ), 
                label: Text('Zak')
                ),
            ],
          ),
        )
      ])
    );
  }
}