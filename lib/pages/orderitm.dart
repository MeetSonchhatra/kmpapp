import 'package:agent/pages/orderpage.dart';
import 'package:flutter/material.dart';

import 'flyingcart.dart';


class OrderItems extends StatefulWidget {
  const OrderItems({Key? key}) : super(key: key);

  @override
  State<OrderItems> createState() => _OrderItemsState();
}

class _OrderItemsState extends State<OrderItems> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [Container(
          height: 120,
          width: 400,
          margin: const EdgeInsets.only(top: 10.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
    
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlbssnDu4nunnWIByUFrsWiUFAjNTRwbf4OA&usqp=CAU'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              // ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Gold Milk',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            '(500/500ml)',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Roboto',
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Total Quantity',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(width: 40),
                            IconButton(
                              icon: const Icon(Icons.shopping_cart),
                              onPressed: () {
                                setState(() {
                                   flyingcart =  Flyingcart();
                                });
                                Future.delayed(const Duration(seconds: 2),() {
                                  setState(() {
                                   Flyingcart = null;
                                    num++;
                                  });
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Flyingcart == null? Container():const Flyingcart(),
        )
      ],
    );
  }
}
