// ignore_for_file: avoid_unnecessary_containers, avoid_returning_null_for_void, duplicate_ignore

import 'package:flutter/material.dart';

import 'horiItems.dart';

// ignore: camel_case_types
class homenw extends StatefulWidget {
  const homenw({Key? key}) : super(key: key);

  @override
  State<homenw> createState() => _homenwState();
}

// ignore: camel_case_types
class _homenwState extends State<homenw> {
  int num = 0;
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
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
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
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: const Center(child: Text('Agent Name ')),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                   
                  },

                ),
                Container(
                  child:  Text(num.toString(),
                  style: TextStyle(fontSize: 10)),
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,color: Colors.blue,
                  ),
                )
              ],
              backgroundColor: Colors.black87,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
            ),
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
                    margin:
                        const EdgeInsets.only(top: 30.0, left: 25, right: 25),
                    child: Column(
                      children: const [
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                        HoriItems(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
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
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
