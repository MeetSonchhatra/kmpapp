import 'package:flutter/material.dart';
class Flyingcart extends StatefulWidget {
  const Flyingcart({super.key});

  @override
  State<Flyingcart> createState() => _FlyingcartState();
}

class _FlyingcartState extends State<Flyingcart> with TickerProviderStateMixin{
  late AnimationController _controller;
  @override
  void initState()
  {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 2),vsync: this)..forward();
  }

  @override
  void dispose()
  {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){

      final Size biggest = constraints.biggest;
      return Stack(
        children: [
          PositionedTransition(
            rect: RelativeRectTween(
              begin: RelativeRect.fromSize(
                Rect.fromLTRB(biggest.width/2 -20, biggest.height -20, biggest.width/2, biggest.height), biggest),
                end: RelativeRect.fromSize(
                Rect.fromLTRB(biggest.width -20, -20, biggest.width, 0), biggest),
                ).animate(CurvedAnimation(parent: _controller, curve: Curves.ease)),
                 child: Padding(padding: EdgeInsets.all(7),child: Icon(Icons.shopping_cart,color: Colors.green,),))
        ],
      );
    });
  }
}