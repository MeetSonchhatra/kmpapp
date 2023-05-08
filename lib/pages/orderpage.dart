import 'package:agent/pages/widgets/data.dart';
import 'package:agent/pages/widgets/orderreq.dart';
import 'package:flutter/material.dart';

import 'horiItems.dart';
import 'orderitm.dart';
int num = 0;

class Orderpg extends StatefulWidget {
  const Orderpg({Key? key}) : super(key: key);

  @override
  State<Orderpg> createState() => _OrderpgState();
}

class _OrderpgState extends State<Orderpg> {
  
  Widget? Flyingcart = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
              title: const Center(child: Text('Order Page ')),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                      Container(
                        child: Center(
                            child: Text(num.toString(),
                                style: TextStyle(fontSize: 10))),
                        width: 15,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      )
                    ],
                  ),
                ),
              ],
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              )),
        ],
        body: ListView(
          children: [
            Container(
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                decoration: const BoxDecoration(
                    color: Color(0xffececec),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Container(
                  margin: const EdgeInsets.only(top: 30.0, left: 25, right: 25),
                  child: Column(
                    children: const [
                      OrderItems(),
                      OrderItems(),
                      OrderItems(),
                      OrderItems(),
                      OrderItems(),
                      OrderItems(),
                      OrderItems(),
                      OrderItems(),
                    ],
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
