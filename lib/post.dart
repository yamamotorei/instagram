import 'package:flutter/material.dart';
import 'package:flutter_app/images.dart';

class Post extends StatelessWidget {
  const Post({
    Key key, @required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        _Profile(),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: imageSize,
          width: imageSize,
          child: Image.network(imageUrl,fit: BoxFit.cover,),
        ),
        SizedBox(
          height: 8,
        ),
        _Buttons()
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.favorite_outline,
          size: 28,
        ),
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.chat_bubble_outline_outlined,
          size: 28,
        ),
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.send,
          size: 28,
        ),
        Spacer(),
        Icon(
          Icons.label_important_outline,
          size: 32,
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}

class _Profile extends StatelessWidget {
  const _Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32,
          width: 32,
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration:
          BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
        ),
        Column(
          children: [
            Text("leo messi"),
            Text("Camp nou"),
          ],
        ),
        Spacer(),
        Icon(Icons.more_horiz_sharp),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
