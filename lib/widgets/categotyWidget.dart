import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  String imageAsset;
  Category({required this.imageAsset});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool isLike = false;
  bool isComment = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(widget.imageAsset),
          Row(
            children: [
              Expanded(
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          isLike = !isLike;
                        });
                      },
                      icon: Icon(Icons.thumb_up_alt_outlined,
                          color: isLike ? Colors.blue : Colors.black))),
              Expanded(
                  child: TextButton(
                onPressed: () {
                  setState(() {
                    isComment = !isComment;
                  });
                },
                child: Text(
                  'FeedBack',
                  style: TextStyle(color: Colors.black),
                ),
              ))
            ],
          ),
          isComment
              ? TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'FeedBack',
                  ),
                )
              : SizedBox(
                  height: 0,
                  width: 0,
                )
        ],
      ),
    );
  }
}
