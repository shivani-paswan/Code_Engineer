import 'package:code_engineer/Common/colors.dart';
import 'package:flutter/material.dart';

class CodeMasterDetails extends StatefulWidget {
  final Map dataList;
  const CodeMasterDetails({super.key, required this.dataList});

  @override
  State<CodeMasterDetails> createState() => _CodeMasterDetailsState();
}

class _CodeMasterDetailsState extends State<CodeMasterDetails> {
  bool showSubject = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CommonColors.themeColor,
          // appBar: AppBar(
          //     centerTitle: true,
          //     backgroundColor: CommonColors.colorSecondary,
          //     leading: GestureDetector(
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //       child: Padding(
          //         padding: const EdgeInsets.all(14),
          //         child: Image.asset(
          //           "assets/images/close.png",
          //           height: 20,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //     title: Text("${dataList["name"]} All Playlist")

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     // CircleAvatar(
          //     //   radius: 28,
          //     //   backgroundImage:
          //     //   AssetImage(dataList["img"]),
          //     //
          //     // ),
          //   ],
          // ),
          // ),
          // backgroundColor: CommonColors.themeColor,
          body: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: CommonColors.textColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(widget.dataList["img"]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "${widget.dataList["name"]} ".toUpperCase(),
                            style: TextStyle(color: CommonColors.textColor),
                          ),
                        ),
                      ],
                    ),
                    //  details  widgets

                    OptionsWithList(
                      title: "Available Notes",
                      dataList: widget.dataList,
                      showIcon: showSubject,
                    ),
                    OptionsWithList(
                      title: "Available Videos",
                      dataList: widget.dataList,
                      showIcon: showSubject,
                    )
                  ],
                ),
              ))
          //  ListView.separated(
          //   itemCount: 100,
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       onTap: () {},
          //       leading: CircleAvatar(
          //         radius: 20,
          //         backgroundImage: AssetImage(dataList["img"]),
          //       ),
          //       title: Text(
          //         "Name of  Course",
          //         style: TextStyle(color: CommonColors.textColor),
          //       ),
          //       trailing: Icon(
          //         Icons.arrow_forward_ios_rounded,
          //         color: CommonColors.textColor,
          //       ),
          //     );
          //   },
          //   separatorBuilder: (BuildContext context, int index) {
          //     return Divider(
          //       thickness: 0.5,
          //       color: CommonColors.colorSecondary,
          //     );
          //   },
          // ),

          ),
    );
  }
}

class OptionsWithList extends StatefulWidget {
  bool showIcon = false;
  String title;
  Map dataList;
  OptionsWithList(
      {super.key,
      required this.title,
      required this.showIcon,
      required this.dataList});

  @override
  State<OptionsWithList> createState() => _OptionsWithListState();
}

class _OptionsWithListState extends State<OptionsWithList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              setState(() {
                widget.showIcon = !widget.showIcon;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.title.toUpperCase(),
                      style: TextStyle(color: CommonColors.textColor),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.showIcon = !widget.showIcon;
                        });
                      },
                      child: Icon(
                        widget.showIcon == true
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down_sharp,
                        color: CommonColors.textColor,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Visibility(
                  visible: widget.showIcon,
                  child: ListView.separated(
                    itemCount: widget.dataList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Text(
                        widget.dataList['name'],
                        style: TextStyle(color: CommonColors.textColor),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        thickness: 0.5,
                        color: CommonColors.colorSecondary,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 0.5,
          color: CommonColors.colorPrimary,
        )
      ],
    );
  }
}
