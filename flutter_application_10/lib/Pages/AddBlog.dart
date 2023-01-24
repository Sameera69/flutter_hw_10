import 'package:flutter/material.dart';
import 'package:flutter_application_10/Pages/BlogClass.dart';
import 'package:flutter_application_10/Pages/Home.dart';

class AddBlog extends StatefulWidget {
  Blog B = Blog('', '', '');
  AddBlog({super.key});

  @override
  State<AddBlog> createState() => _AddBlog();
}

class _AddBlog extends State<AddBlog> {
  final firstNameController = TextEditingController();
  final SecondeNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: 'Title'),
              onChanged: (val) {},
              controller: firstNameController,
              onSaved: (value) {
                widget.B.title = firstNameController.text;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: 'Description'),
              onChanged: (val) {},
              controller: SecondeNameController,
              onSaved: (value) {
                widget.B.description = SecondeNameController.text;
              },
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Pick an image'),
            ),
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2023/01/12/15/05/flamingo-7714344_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2023/01/12/15/05/flamingo-7714344_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2023/01/14/19/50/flower-7718952_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2023/01/14/19/50/flower-7718952_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2023/01/10/08/48/water-7709322_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2023/01/10/08/48/water-7709322_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2023/01/12/18/08/beach-7714610_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2023/01/12/18/08/beach-7714610_1280.jpg',
                        width: 100,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2023/01/08/05/52/mountain-7704596_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2023/01/08/05/52/mountain-7704596_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2023/01/14/13/59/sculpture-7718299_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2023/01/14/13/59/sculpture-7718299_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        widget.B.imageUrl = 'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg';
                      },
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2022/11/14/10/49/mountains-7591326_1280.jpg',
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                widget.B.description = SecondeNameController.text;
                widget.B.title = firstNameController.text;
                setState(() {});
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(
                              BlogN: widget.B,
                            )));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
