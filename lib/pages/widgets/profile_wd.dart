import 'dart:io';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onclicked;

  const ProfileWidget( {
    Key? key,
    required this.imagePath,
    this.isEdit = false, 
    required this.onclicked,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(bottom: 0, right: 4, child: buildEditIcon(color)),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = AssetImage(imagePath);
    return ClipOval(
      child: Image(
        image: image,
        fit: BoxFit.cover,
        width: 120,
        height: 120,
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 2,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            isEdit? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
