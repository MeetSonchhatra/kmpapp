import 'package:flutter/material.dart';

// ignore: camel_case_types
class homewd extends StatefulWidget {
  const homewd({Key? key}) : super(key: key);

  @override
  State<homewd> createState() => _homewdState();
}

// ignore: camel_case_types
class _homewdState extends State<homewd> {


  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        drawer: Drawer(
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            FutureBuilder(
             // future: _fetch(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return UserAccountsDrawerHeader(
                  accountName: const Text("Meet"),
                  accountEmail: const Text("9737273154"),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        'images/KMP.png',
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
                  ),
                );
              },
              // child:
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorites'),
              // ignore: avoid_returning_null_for_void
              onTap: () => null,
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Friends'),
              // ignore: avoid_returning_null_for_void
              onTap: () => null,
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              // ignore: avoid_returning_null_for_void
              onTap: () => null,
            ),
            const ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Request'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              // ignore: avoid_returning_null_for_void
              onTap: () => null,
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Policies'),
              // ignore: avoid_returning_null_for_void
              onTap: () => null,
            ),
            const Divider(),
            ListTile(
              title: const Text('Exit'),
              leading: const Icon(Icons.exit_to_app),
              // ignore: avoid_returning_null_for_void
              onTap: () => null,
            ),
          ],
        ),
      ),
      body : NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
         SliverAppBar(
                  title: const Text('Agent Name '),
                  actions:<Widget> [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        showSearch(context: context, delegate: CustomSearchDelegate());
                      },
                    )
                  ],
                  backgroundColor: Colors.purple,
      
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)
                    )
                  ),
        ),
        ],
  
      
      body:  Container(
        height: 700,
         child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
             return Container(
              margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: Row(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "images/KMP.png"
                        )
                         )
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Agent ${index +1}' ),
                          const SizedBox(height: 10,),
                          const Text('View Your order here')
                        ]
                        ),
                      ),
                     
                    ),
                  )
                ],
              ),
             );
          }
          ),
       ),
      )
       );  
     
  }
}

class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms  = [
    'Agent 1',
    'Agent 2',
    'Agent 3',
    'Agent 4',
    'Agent 5',
    'Agent 6',
    'Agent 7',
    'Agent 8',
    'Agent 9',
    'Agent 10',
    'Agent 11',
    'Agent 12',
    'Agent 13',
    'Agent 14',
    'Agent 15',
    'Agent 16',
    'Agent 17',
    'Agent 18',
    'Agent 19',
    'Agent 20',
  ];
  @override
  List<Widget>buildActions (BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed : (){
          query = '';
        },
      ),
    ];
  }

    @override
  Widget buildLeading (BuildContext context) {
      return IconButton(
      icon: const Icon(Icons.arrow_back),
        onPressed : (){
          close(context, null);
        },
  );
  }

    @override
  Widget buildResults (BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms){
      if (fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder:(context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      );
    
  }

    @override
  Widget buildSuggestions (BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms){
      if (fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder:(context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      );
    
  }
  }
