// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'horiItems.dart';

class sales extends StatefulWidget {
  const sales({Key? key}) : super(key: key);

  @override
  State<sales> createState() => _salesState();
}

class _salesState extends State<sales> {
  //  final items = ['7 days', '15 days', '1 month'];
  // String? value = '7 days';
  String _selectedOption = '7 days';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('View Sales')),
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedOption,
                isExpanded: true,
                iconSize: 36,
               // icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                onChanged:(String? newValue) {
                  setState(() {
                    _selectedOption = newValue!;
                  });
                   _handleSelectedItem(_selectedOption);
                },
                  
                items: <String>['7 days', '15 days', '1 Month']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
             }).toList(),
                
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
 
   void _handleSelectedItem(String selectedItem) {
   switch (_selectedOption) {
                    case '7 days' :
                    _onOption1Selected();
                    break;
                    case '15 days' :
                    _onOption2Selected();
                    break;
                    case '1 month':
                    _onOption3Selected();
                    break;
                  }
   }

    void _onOption1Selected() {
    print('Sales of past 7 days');
    // Do something for Option 1
  }

  void _onOption2Selected() {
    print('Sales of past 15 days');
    // Do something for Option 2
  }

  void _onOption3Selected() {
    HoriItems();
    HoriItems();
    // Do something for Option 3
  }
}


// import 'package:flutter/material.dart';

// class sales extends StatefulWidget {
//   const sales({Key? key}) : super(key: key);

//   @override
//   _salesState createState() => _salesState();
// }

// class _salesState extends State<sales> {
//   String _selectedItem = '7 days';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text('View Sales')),
//         backgroundColor: Colors.black,
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(25),
//                 bottomRight: Radius.circular(25))),
//       ),
//       body: Center(
//         child: DropdownButton<String>(
//           value: _selectedItem,
//           onChanged: (String? newValue) {
//             setState(() {
//               _selectedItem = newValue!;
//             });
//             _handleSelectedItem(_selectedItem);
//           },
//           items: <String>['7 days', '15 days', '1 month']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }

//   void _handleSelectedItem(String selectedItem) {
//     switch (selectedItem) {
//       case '7 days':
//         _functionForItem1();
//         break;
//       case '15 days':
//         _functionForItem2();
//         break;
//       case '1 month':
//         _functionForItem3();
//         break;
//     }
//   }

//   void _functionForItem1() {
//     print('Function for Item 1 is called');
//     // Add your code here for Item 1
//   }

//   void _functionForItem2() {
//     print('Function for Item 2 is called');
//     // Add your code here for Item 2
//   }

//   void _functionForItem3() {
//     print('Function for Item 3 is called');
//     // Add your code here for Item 3
//   }
// }
