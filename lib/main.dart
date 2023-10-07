import 'package:flutter/material.dart';

import 'shared_pref.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPreferencesScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPreferenceScreen extends StatefulWidget {
//   const SharedPreferenceScreen({super.key});

//   @override
//   State<SharedPreferenceScreen> createState() => _SharedPreferenceScreenState();
// }

// class _SharedPreferenceScreenState extends State<SharedPreferenceScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     isLogin();
//   }

//   void isLogin() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

//     sharedPreferences.setInt('age', 20);
//     sharedPreferences.setDouble('percentage', 90.7);
//     sharedPreferences.setString('name', 'Royal');
//     sharedPreferences.setBool('isLogin', false);
//     sharedPreferences.setInt("Lucky No", 07);

//     setState(() {});
//   }
//   // void initState() {
//   //   super.initState();
//   //   // isLogin();
//   // }

//   // void isLogin() async {
//   //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   //   name = sharedPreferences.getString('name') ?? '';
//   //   age = sharedPreferences.getInt('age') ?? 0;
//   //   setState(() {});
//   // }

//   // String name = '';
//   // late int age;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Shared Preference'),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () async {
//       //     SharedPreferences sharedPreferences =
//       //         await SharedPreferences.getInstance();

//       //     // sharedPreferences.remove('name');
//       //     // sharedPreferences.remove('age');

//       //     // name = sharedPreferences.getString('name') ?? '';
//       //     // age = sharedPreferences.getInt('age') ?? 0;

//       //     sharedPreferences.setInt('age', 20);
//       //     sharedPreferences.setDouble('percentage', 90.7);
//       //     sharedPreferences.setString('name', 'Royal');
//       //     sharedPreferences.setBool('isLogin', false);

//       //     // name = sharedPreferences.getString('name').toString();
//       //     // age = sharedPreferences.getInt('age') ?? 0;
//       //     setState(() {});

//       //     // print(sharedPreferences.getString('name'));
//       //   },
//       //   child: const Icon(Icons.add),
//       // ),
//       body: Column(
//         children: [
//           // Text(name.toString()),
//           // Text(age.toString())
//           FutureBuilder(
//             future: SharedPreferences.getInstance(),
//             builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
//               return Column(
//                 children: [
//                   Text(snapshot.data!.getString("name").toString()),
//                   Text(snapshot.data!.getInt("age").toString()),
//                   Text(snapshot.data!.getDouble("percentage").toString()),
//                   Text(snapshot.data!.getBool("isLogin").toString()),
//                   Text(snapshot.data.getInt("Lucky No").toString())
//                 ],
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
