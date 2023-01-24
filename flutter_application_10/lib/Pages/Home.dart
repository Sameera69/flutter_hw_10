import 'package:flutter/material.dart';
import 'package:flutter_application_10/Pages/AddBlog.dart';
import 'package:flutter_application_10/Pages/Blog.dart';
import 'package:flutter_application_10/Pages/BlogClass.dart';

List<Blog> Blogs = <Blog>[
  Blog('Title1', 'https://cdn.pixabay.com/photo/2023/01/01/23/37/woman-7691013_1280.jpg',
      'This text is a description of a blog title as above, This text is a description of a blog title as above, This text is a description of a blog title as above, This text is a description of a blog title as above,'),
  Blog('Title2', 'https://cdn.pixabay.com/photo/2023/01/10/08/48/water-7709322_1280.jpg',
      'This text is a description of a blog title as above, This text is a description of a blog title as above, This text is a description of a blog title as above, This text is a description of a blog title as above,'),
  Blog('Title3', 'https://cdn.pixabay.com/photo/2023/01/12/15/05/flamingo-7714344_1280.jpg',
      'This text is a description of a blog title as above, This text is a description of a blog title as above, This text is a description of a blog title as above, This text is a description of a blog title as above,')
];

class MyHomePage extends StatefulWidget {
  Blog BlogN = Blog('', '', '');
  MyHomePage({required this.BlogN});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    if (widget.BlogN.title != '') {
      Blogs.add(widget.BlogN);
    }
    Blog i = Blog('', '', '');
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddBlog()));
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
        backgroundColor: const Color.fromARGB(225, 225, 225, 225),
        appBar: AppBar(),
        body: Column(
          children: [
            for (i in Blogs)
              BlogListCard(
                B: i,
              ),
          ],
        ));
  }
}

class BlogListCard extends StatefulWidget {
  Blog B = Blog('', '', '');
  BlogListCard({required this.B});

  @override
  State<BlogListCard> createState() => _BlogListCardState();
}

class _BlogListCardState extends State<BlogListCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
        Navigator.push(context, MaterialPageRoute(builder: (context) => BloggPage(B: widget.B)));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(190, 200, 200, 200)),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.network(
                widget.B.imageUrl,
                width: 100,
                height: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.B.title),
                  Text(
                    widget.B.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
