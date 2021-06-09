import 'package:dio_example/modules/post/models/post_models.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final PostModel post;

  const PostPage({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Post ${post.id}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${post.title}\n",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${post.body}",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
