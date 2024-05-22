import 'package:flutter/material.dart';
import 'photo_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  PhotoDetailScreen({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo.title),
      ),
      body: Center(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: photo.url,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(height: 20),
            Text(
              'ID: ${photo.id}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              photo.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
