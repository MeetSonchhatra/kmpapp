// ignore_for_file: camel_case_types

import 'package:agent/pages/widgets/appbar_wd.dart';
import 'package:agent/pages/widgets/edit_pro.dart';
import 'package:agent/pages/widgets/profile_wd.dart';
import 'package:agent/pages/widgets/user.dart';
import 'package:agent/pages/widgets/user_pref.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final user = UserPreferences.myuser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 20),
          ProfileWidget(
            imagePath: user.imagePath,
            onclicked: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Editpro()),
              );
            },
          ),
          const SizedBox(height: 24),
          buildName(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Text('Name :', style: TextStyle(fontSize: 20)),
              const SizedBox(width: 40),
              Text(
                user.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Text('Email :', style: TextStyle(fontSize: 20)),
              const SizedBox(width: 40),
              Text(
                user.email,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Text('Phone Num :', style: TextStyle(fontSize: 18)),
              const SizedBox(width: 40),
              Text(
                user.phonenum,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      );
}
