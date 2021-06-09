import 'package:dio_example/modules/home/home_repository.dart';
import 'package:dio_example/modules/post/models/post_models.dart';
import 'package:dio_example/modules/post/post_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PostModel _post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Aperte para o post 1"),
          ElevatedButton(
            onPressed: () async {
              _post = await HomeRespository().getPosts();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostPage(post: _post,)),
              );
            },
            child: Text("GET"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
          ),
        ],
      )),
    );
  }
}
