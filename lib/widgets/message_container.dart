import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gmail_clone/models/email_model.dart';

class MessageContainer extends StatefulWidget {
  final Email email;

  const MessageContainer({
    Key key,
    @required this.email,
  }) : super(key: key);

  @override
  _MessageContainerState createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        margin: EdgeInsets.symmetric(vertical: 4.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  //Profile picture of the message sender
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 26,
                        backgroundImage: CachedNetworkImageProvider(
                            widget.email.sender.imageUrl),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      children: [
                        //Message sender name and send time
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.email.sender.name,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              widget.email.time,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2.0),
                        //Subject + message + favorite icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //details of message
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.email.subject,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.60,
                                  child: Text(
                                    widget.email.message,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            //Favorite icon
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    isFav ? Icons.star : Icons.star_border,
                                    color:
                                        isFav ? Colors.orange : Colors.black54,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isFav = !isFav;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 4.0),
              // Text(post.caption),
              // post.imageUrl != null
              //     ? const SizedBox.shrink()
              //     : const SizedBox(height: 6.0)
            ],
          ),
        ),
      ),
    );
  }
}
