import 'package:agent/pages/widgets/appbar_wd.dart';
import 'package:agent/pages/widgets/profile_wd.dart';
import 'package:agent/pages/widgets/textfld.dart';
import 'package:agent/pages/widgets/user.dart';
import 'package:agent/pages/widgets/user_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Editpro extends StatefulWidget {
  const Editpro({super.key});

  @override
  State<Editpro> createState() => _EditproState();
}

class _EditproState extends State<Editpro> {
  User user = UserPreferences.myuser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            isEdit: true,
            onclicked: () async {}
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label : 'Full Name ',
              text : user.name,
              onChanged : (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label : 'Email ',
              text : user.email,
              onChanged : (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label : ' Phone Number ',
              text : user.phonenum,
              onChanged : (phonenum) {},
            ),
        ],
      ),
    );
  }
}