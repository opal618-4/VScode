import 'package:flutter/material.dart';

import 'list_Data.dart';

class NationPage extends StatefulWidget {
  const NationPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _NationPageState createState() => _NationPageState();
}

class _NationPageState extends State<NationPage> {
  List<User>? selectedUserList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            const Positioned(
              left: 35,
              bottom: 250,
              child: Text(
                "Filter It",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A4A4A)),
              ),
            ),
            //const Positioned(bottom: 50, child: Filternation()),
          ],
        ),
      ),
    );
  }
}

// class Filternation extends StatelessWidget {
//   const Filternation({Key? key, this.allTextList, this.selectedUserList})
//       : super(key: key);
//   final List<User>? allTextList;
//   final List<User>? selectedUserList;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  SafeArea(
//         child: FilterListWidget<User>(
//           themeData: FilterListThemeData(context),
//           hideSelectedTextCount: true,
//           listData: nationList,
//           selectedListData: selectedUserList,
//           onApplyButtonClick: (list) {
//             Navigator.pop(context, list);
//           },
//           choiceChipLabel: (item) {
//             /// Used to print text on chip
//             return item!.name;
//           },
//           validateSelectedItem: (list, val) {
//             ///  identify if item is selected or not
//             return list!.contains(val);
//           },
//           onItemSearch: (user, query) {
//             /// When search query change in search bar then this method will be called
//             ///
//             /// Check if items contains query
//             return user.name!.toLowerCase().contains(query.toLowerCase());
//           },
//         ),
//       ),
//     );
//   }
// }

class User {
  final String? name;
  final String? avatar;
  User({this.name, this.avatar});
}

List<User> nationList = [
  User(name: "Thai", avatar: "image/hamburger.png"),
  User(name: "Japanese", avatar: "image/french-fries.png"),
  User(name: "Chinese", avatar: "image/mustard.png"),
];
