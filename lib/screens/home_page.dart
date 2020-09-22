import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gmail_clone/models/email_model.dart';
import 'package:gmail_clone/widgets/message_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () {},
        icon: Icon(
          Icons.edit_outlined,
          color: Colors.red,
        ),
        label: Text(
          'Compose',
          style: TextStyle(color: Colors.red),
        ),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          _appBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
              child: Text(
                'INBOX',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          //List of messages
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              final Email email = emails[index];
              return MessageContainer(email: email);
            },
            childCount: emails.length,
          )),
        ],
      ),
    );
  }

  Widget _appBar() {
    return SliverAppBar(
      floating: true,
      elevation: 0,
      title: Card(
        elevation: 3,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            Expanded(
              child: Text(
                'Search in mail',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.grey,
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
            )
          ],
        ),
      ),
    );
  }
}
