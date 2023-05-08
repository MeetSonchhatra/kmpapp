// ignore_for_file: file_names

import 'package:agent/pages/orderpage.dart';
import 'package:flutter/material.dart';

class HoriItems extends StatefulWidget {
  const HoriItems({Key? key}) : super(key: key);

  @override
  State<HoriItems> createState() => _HoriItemsState();
}

class _HoriItemsState extends State<HoriItems> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // height: 270,
                // width: 190,
                // color: Colors.grey,
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
                          'Distributor Name',
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
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'View order here',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Roboto',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(width: 40),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, 
                                MaterialPageRoute(builder : (context)=>const Orderpg()),
                                );
                              }, icon: const Icon(Icons.arrow_forward))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
