import 'package:flutter/material.dart';
import 'package:flutter_application_10/Pages/BlogClass.dart';

class BloggPage extends StatefulWidget {
  Blog B = Blog('', '', '');
  BloggPage({required this.B});

  @override
  State<BloggPage> createState() => _BloggPage();
}

class _BloggPage extends State<BloggPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(widget.B.imageUrl),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.B.title),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.B.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
