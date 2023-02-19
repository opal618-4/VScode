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
              left: 100,
              top: 85,
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
                      Color.fromARGB(44, 255, 255, 255)),
                ),
                child: const Text(
                  "Filter Nation",
                  style: TextStyle(
                      color: Color(0xFF5AB198), fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
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
                      Color.fromARGB(44, 255, 255, 255)),
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
              child: TextButton(
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
                      Color.fromARGB(44, 255, 255, 255)),
                ),
                child: const Text(
                  "Filter Type",
                  style: TextStyle(
                      color: Color(0xFF5AB198), fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ElevatedButton(
                child: const Text('Selected Filter'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text('The Filter you choose'),
                            backgroundColor:  Color(0xFFDBDBDB),
                          ),
                          body: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                if (selectedUserList == null ||
                                    selectedUserList!.isEmpty)
                                  const Expanded(
                                    child: Center(
                                      child: Text('No user selected'),
                                    ),
                                  )
                                else
                                  Expanded(
                                    child: ListView.separated(
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          title: Text(
                                              selectedUserList![index].name!),
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
                        backgroundColor: Color(0xFF5AB198)
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Filtertaste extends StatelessWidget {
  const Filtertaste({Key? key, this.allTextList, this.selectedUserList})
      : super(key: key);
  final List<User>? allTextList;
  final List<User>? selectedUserList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter list Page"),
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: FilterListWidget<User>(
          themeData: FilterListThemeData(context),
          hideSelectedTextCount: true,
          listData: tasteList,
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
class Filtertype extends StatelessWidget {
  const Filtertype({Key? key, this.allTextList, this.selectedUserList})
      : super(key: key);
  final List<User>? allTextList;
  final List<User>? selectedUserList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter list Page"),
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: FilterListWidget<User>(
          themeData: FilterListThemeData(context),
          hideSelectedTextCount: true,
          listData: typeList,
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
class Filternation extends StatelessWidget {
  const Filternation({Key? key, this.allTextList, this.selectedUserList})
      : super(key: key);
  final List<User>? allTextList;
  final List<User>? selectedUserList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter list Page"),
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
  User(name: "Thai", avatar: "user.png"),
  User(name: "Japanese", avatar: "user.png"),
  User(name: "Korean", avatar: "user.png"),
];
List<User> typeList = [
  User(name: "Dessert", avatar: "user.png"),
  User(name: "Food", avatar: "user.png"),
  User(name: "Vegetarian", avatar: "user.png"),
];
