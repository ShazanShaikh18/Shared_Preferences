import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesScreen extends StatefulWidget {
  const SharedPreferencesScreen({super.key});

  @override
  State<SharedPreferencesScreen> createState() =>
      _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setInt('age', 25);
    sharedPreferences.setString('name', 'Royal');
    sharedPreferences.setString('course', 'Flutter');
    sharedPreferences.setInt('lucky number', 18);
    sharedPreferences.setDouble('percentage', 95.4);
    sharedPreferences.setBool('isLogin', true);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
          return Column(
            children: [
              Text(snapshot.data!.getInt('age').toString()),
              Text(snapshot.data!.getString('name').toString()),
              Text(snapshot.data!.getString('course').toString()),
              Text(snapshot.data!.getInt('lucky number').toString()),
              Text(snapshot.data!.getDouble('percentage').toString()),
              Text(snapshot.data!.getBool('isLogin').toString()),
            ],
          );
        },
      ),
    );
  }
}
