import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User>? selectedUserList = [];
  List<User> nationList = [
    User(name: "ไทย", avatar: "image/hamburger.png"),
    User(name: "ญี่ปุ่น", avatar: "image/french-fries.png"),
    User(name: "จีน", avatar: "image/mustard.png")
  ];
  int? _value;
  /* Future<void> openFilterDelegate() async {
    await FilterListDelegate.show<User>(
      context: context,
      list: userList,
      selectedListData: selectedUserList,
      theme: FilterListDelegateThemeData(
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          tileColor: Colors.white,
          selectedColor: Colors.red,
          selectedTileColor: const Color(0xFF649BEC).withOpacity(.5),
          textColor: Colors.blue,
        ),
      ),
      // enableOnlySingleSelection: true,
      onItemSearch: (user, query) {
        return user.name!.toLowerCase().contains(query.toLowerCase());
      },
      tileLabel: (user) => user!.name,
      emptySearchChild: const Center(child: Text('No user found')),
      // enableOnlySingleSelection: true,
      searchFieldHint: 'Search Here..',
      onApplyButtonClick: (list) {
        setState(() {
          selectedUserList = list;
        });
      },
    );
  }*/

  /*Future<void> _openFilterDialog() async {
    await FilterListDialog.display<User>(
      context,
      hideSelectedTextCount: true,
      themeData: FilterListThemeData(context),
      headlineText: 'Select Users',
      height: 500,
      listData: userList,
      selectedListData: selectedUserList,
      choiceChipLabel: (item) => item!.name,
      validateSelectedItem: (list, val) => list!.contains(val),
      controlButtons: [ControlButtonType.All, ControlButtonType.Reset],
      onItemSearch: (user, query) {
        /// When search query change in search bar then this method will be called
        ///
        /// Check if items contains query
        return user.name!.toLowerCase().contains(query.toLowerCase());
      },
      onApplyButtonClick: (list) {
        setState(() {
          selectedUserList = List.from(list!);
        });
        Navigator.pop(context);
      },
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Positioned(
              left: 35,
              bottom: 250,
              child: TextButton(
                onPressed: () async {
                  final list = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Filternation(
                        allTextList: nationList,
                        selectedUserList: selectedUserList,
                      ),
                    ),
                  );
                  if (list != null) {
                    setState(() {
                      selectedUserList = List.from(list);
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(44, 255, 255, 255)),
                ),
                child: const Text(
                  "Filter Nation",
                  style: TextStyle(
                      color: Color(0xFF5AB198), fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 150,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('เลือกสัญชาติอาหาร'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Wrap(
                      spacing: 5.0,
                      direction: Axis.horizontal,
                      children: choiceChips(),
                    )
                  ]),
            ),

            /*Positioned(
              right: 9,
              top: 430,
              child: TextButton(
                onPressed: () async {
                  final list = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Filtertaste(
                        allTextList: tasteList,
                        selectedUserList: selectedUserList,
                      ),
                    ),
                  );
                  if (list != null) {
                    setState(() {
                      selectedUserList = List.from(list);
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(44, 255, 255, 255)),
                ),
                child: const Text(
                  "Filter Taste",
                  style: TextStyle(
                      color: Color(0xFF5AB198), fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 470,
              child: ElevatedButton( 
                onPressed: () async {
                  final list = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Filtertype(
                        allTextList: typeList,
                        selectedUserList: selectedUserList,
                      ),
                    ),
                  );
                  if (list != null) {
                    setState(() {
                      selectedUserList = List.from(list);
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 255, 255)),
                ),
                child: const Text(
                  "Filter",
                  style: TextStyle(
                      color: Color(0xFF5AB198), fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              child: ElevatedButton(
                child: const Text('Selected Filter'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text('The Filter you choose'),
                            titleTextStyle: const TextStyle(
                                color: Colors.white, fontSize: 20),
                            backgroundColor:
                                const Color.fromARGB(255, 158, 198, 171),
                          ),
                          body: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                if (selectedUserList == null ||
                                    selectedUserList!.isEmpty)
                                  const Expanded(
                                    child: Center(
                                      child: Text(
                                        'No user selected',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                else
                                  Expanded(
                                    child: ListView.separated(
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          title: Text(
                                            selectedUserList![index].name!,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          const Divider(),
                                      itemCount: selectedUserList!.length,
                                    ),
                                  )
                              ],
                            ),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 54, 94, 83),
                        );
                      },
                    ),
                  );
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }

  List<Widget> choiceChips() {
    List<Widget> chips = [];
    for (int i = 0; i < nationList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: ChoiceChip(
          label: Text(nationList[i].name.toString()),
          labelStyle: const TextStyle(color: Colors.white),
          selected: _value == i,
          selectedColor: const Color.fromARGB(255, 54, 94, 83),
          onSelected: (bool value) {
            setState(() {
              _value = i;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}

class Filternation extends StatelessWidget {
  const Filternation({Key? key, this.allTextList, this.selectedUserList})
      : super(key: key);
  final List<User>? allTextList;
  final List<User>? selectedUserList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nationality Filter list Page"),
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: FilterListWidget<User>(
          themeData: FilterListThemeData(context),
          hideSelectedTextCount: true,
          listData: nationList,
          selectedListData: selectedUserList,
          onApplyButtonClick: (list) {
            Navigator.pop(context, list);
          },
          choiceChipLabel: (item) {
            /// Used to print text on chip
            return item!.name;
          },
          // choiceChipBuilder: (context, item, isSelected) {
          //   return Container(
          //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          //     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //     decoration: BoxDecoration(
          //         border: Border.all(
          //       color: isSelected! ? Colors.blue[300]! : Colors.grey[300]!,
          //     )),
          //     child: Text(item.name),
          //   );
          // },
          validateSelectedItem: (list, val) {
            ///  identify if item is selected or not
            return list!.contains(val);
          },
          onItemSearch: (user, query) {
            /// When search query change in search bar then this method will be called
            ///
            /// Check if items contains query
            return user.name!.toLowerCase().contains(query.toLowerCase());
          },
        ),
      ),
    );
  }
}

// class Filtertaste extends StatelessWidget {
//   const Filtertaste({Key? key, this.allTextList, this.selectedUserList})
//       : super(key: key);
//   final List<User>? allTextList;
//   final List<User>? selectedUserList;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Taste Filter list Page"),
//         actions: <Widget>[],
//       ),
//       body: SafeArea(
//         child: FilterListWidget<User>(
//           themeData: FilterListThemeData(context),
//           hideSelectedTextCount: true,
//           listData: tasteList,
//           selectedListData: selectedUserList,
//           onApplyButtonClick: (list) {
//             Navigator.pop(context, list);
//           },
//           choiceChipLabel: (item) {
//             /// Used to print text on chip
//             return item!.name;
//           },
// choiceChipBuilder: (context, item, isSelected) {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//     decoration: BoxDecoration(
//         border: Border.all(
//       color: isSelected! ? Colors.blue[300]! : Colors.grey[300]!,
//     )),
//     child: Text(item.name),
//   );
// },
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
// class Filtertype extends StatelessWidget {
//   const Filtertype({Key? key, this.allTextList, this.selectedUserList})
//       : super(key: key);
//   final List<User>? allTextList;
//   final List<User>? selectedUserList;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Type Filter list Page"),
//         actions: <Widget>[],
//       ),
//       body: SafeArea(
//         child: FilterListWidget<User>(
//           themeData: FilterListThemeData(context),
//           hideSelectedTextCount: true,
//           listData: typeList,
//           selectedListData: selectedUserList,
//           onApplyButtonClick: (list) {
//             Navigator.pop(context, list);
//           },
//           choiceChipLabel: (item) {
//             /// Used to print text on chip
//             return item!.name;
//           },
// choiceChipBuilder: (context, item, isSelected) {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//     decoration: BoxDecoration(
//         border: Border.all(
//       color: isSelected! ? Colors.blue[300]! : Colors.grey[300]!,
//     )),
//     child: Text(item.name),
//   );
// },
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

/// Creating a global list for example purpose.
/// Generally it should be within data class or where ever you want
List<User> tasteList = [
  User(name: "Spicy", avatar: "user.png"),
  User(name: "Umami", avatar: "user.png"),
  User(name: "Sweet", avatar: "user.png"),
  User(name: "Sour", avatar: "user.png"),
];
List<User> nationList = [
  User(name: "Thai", avatar: "image/hamburger.png"),
  User(name: "Japanese", avatar: "image/french-fries.png"),
  User(name: "Chinese", avatar: "image/mustard.png"),
];
List<User> typeList = [
  User(name: "Dessert", avatar: "user.png"),
  User(name: "Food", avatar: "user.png"),
  User(name: "Vegetarian", avatar: "user.png"),
];
