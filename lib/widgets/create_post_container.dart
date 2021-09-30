import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 0.0),
      height: 100.0,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Ne Düşünüyorsun ?',
                  ),
                ),
              )
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CreatePostFlatButtonIcon(
                    icon: Icons.videocam,
                    color: Colors.red,
                    labelTxt: "Live",
                    onpressed: () => print('live'),
                  ),
                ),
                const VerticalDivider(width: 8.0),
                Expanded(
                  child: CreatePostFlatButtonIcon(
                    icon: Icons.photo_library,
                    color: Colors.green,
                    labelTxt: "Photo",
                    onpressed: () => print('photo'),
                  ),
                ),
                const VerticalDivider(width: 8.0),
                Expanded(
                  child: CreatePostFlatButtonIcon(
                    icon: Icons.video_call,
                    color: Colors.purpleAccent,
                    labelTxt: "Room",
                    onpressed: () => print('room'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
