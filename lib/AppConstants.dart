import 'package:flutter/material.dart';

int primaryClrCode = 0xFF9E32DD;
Color primaryClr = Color(0xFF9E32DD);

Widget AppBarContainer(BuildContext context, String title) {
  return Container(
    height: 150,
    decoration: BoxDecoration(
        // color: Color(0xFFF34E0E),
        gradient: LinearGradient(colors: [
      Color(0xFF8A2FAD),
      Color(0xFFE06CFB),
    ])
        // borderRadius: BorderRadius.circular(20)
        ),
    child: Stack(
      children: [
        Positioned(
          top: 130,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(80)),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    )),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "$title",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget CTextInput(String title, {int minLines = 1, int maxLines = 1}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$title", style: TextStyle(fontSize: 16)),
        Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 1), color: Colors.grey, blurRadius: 2)
                ]),
            child: TextField(
              minLines: minLines,
              maxLines: maxLines,
              decoration: InputDecoration(
                  // hintText: title,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10)),
            ))
      ],
    ),
  );
}

class DDMenuItem extends StatefulWidget {
  DDMenuItem(
      {Key? key,
      required this.name,
      required this.dataSource,
      required this.index,
      required this.title,
      this.errorshow = false,
      this.enable = true,
      this.small = false,
      required this.callback})
      : super(key: key);

  String title;
  String name;
  List<String> dataSource;
  final callback;
  int index;
  bool errorshow;
  bool enable;
  bool small;

  @override
  State<DDMenuItem> createState() => _DDMenuItemState();
}

class _DDMenuItemState extends State<DDMenuItem> {
  String currValue = "Select";
  bool _explicitErrorGone = false;
  @override
  void initState() {
    super.initState();
    currValue = widget.name;
    print(currValue + " Rerendered");
  }

  void titleDidChange(String title) {
    setState(() {
      currValue = title;
      _explicitErrorGone = true;
    });
    widget.callback(title, widget.index);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.name != currValue) {
      currValue = widget.name;
    }
    print(currValue);
    if (widget.small)
      return Container(
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: InkWell(
          onTap: () {
            FocusScope.of(context).unfocus();
            if (widget.enable)
              showDialog(
                  context: context,
                  builder: (context) => SelectionAlertDialog(
                      selectedData: currValue,
                      title: widget.title, //widget.name,
                      listData: widget.dataSource,
                      titleDidChange: titleDidChange));
          },
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              Text(
                currValue,
                style: TextStyle(
                    color: widget.enable ? Colors.black : Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: primaryClr,
                ),
              )
            ],
          ),
        ),
      );
    return Container(
      height: 40,
      // decoration: BoxDecoration(border: Border.all(color: primaryGreen)),
      child: /*ListView(children: [*/
          ListTile(
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        onTap: () {
          FocusScope.of(context).unfocus();
          if (widget.enable)
            showDialog(
                context: context,
                builder: (context) => SelectionAlertDialog(
                    selectedData: currValue,
                    title: widget.title, //widget.name,
                    listData: widget.dataSource,
                    titleDidChange: titleDidChange));
        },
        title: Text(
          currValue,
          style: TextStyle(color: widget.enable ? Colors.black : Colors.grey),
        ),
        leading: widget.errorshow
            ? _explicitErrorGone
                ? null
                : const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                  )
            : null,
        trailing: Icon(
          Icons.arrow_drop_down_sharp,
          color: widget.enable ? primaryClr : Colors.grey,
          size: 40,
        ),
      ), /*])*/
    );
  }
}

//Alert Container
class SelectionAlertDialog extends StatefulWidget {
  SelectionAlertDialog(
      {Key? key,
      required this.title,
      required this.selectedData,
      required this.listData,
      required this.titleDidChange})
      : super(key: key);

  List<String> listData;
  Function titleDidChange;
  String selectedData;
  String title;

  @override
  State<SelectionAlertDialog> createState() => _SelectionAlertDialogState();
}

class _SelectionAlertDialogState extends State<SelectionAlertDialog> {
  String _value = "";
  @override
  void initState() {
    super.initState();
    _value = widget.selectedData;

    // showDialog(context: context, builder: (context)=>selectionDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: widget.listData.length * 45 <
                (MediaQuery.of(context).size.height - 320)
            ? (60 + (widget.listData.length * 45))
            : MediaQuery.of(context).size.height -
                320 /*(50 * widget.listData.length) >
                MediaQuery.of(context).size.height - 200
            ? MediaQuery.of(context).size.height - 250
            : 50 + (60 * widget.listData.length).toDouble()*/
        ,
        //50 + (60 * widget.listData.length).toDouble(),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 18),
            ),
            const Divider(),
            Expanded(
              /* height: widget.listData.length * 40 <
                      (MediaQuery.of(context).size.height - 320)
                  ? (widget.listData.length * 40)
                  : MediaQuery.of(context).size.height -
                      390 /* (50 * widget.listData.length) >
                      MediaQuery.of(context).size.height - 200
                  ? MediaQuery.of(context).size.height - 320
                  : (50 * widget.listData.length).toDouble()*/
              ,*/
              child: Scrollbar(
                thumbVisibility: true,
                child: ListView(itemExtent: 40, children: [
                  // for (var i = 1; i < 15; i++)
                  for (var i in widget.listData)
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      style: ListTileStyle.list,
                      onTap: () {
                        setState(() {
                          _value = i.toString();
                          widget.titleDidChange(i.toString());
                        });
                        Navigator.pop(context);
                      },
                      title: Text("$i"),
                      leading: Radio(
                        visualDensity:
                            VisualDensity(vertical: 0, horizontal: 0),
                        activeColor: primaryClr,
                        groupValue: _value,
                        value: i,
                        onChanged: (String? val) {
                          setState(() {
                            _value = val!;
                            widget.titleDidChange(_value);
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

BoxDecoration CcardDecoration({double rad = 8}) {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(rad),
      boxShadow: [
        BoxShadow(
            color: Colors.black45,
            blurRadius: 1,
            offset: Offset(.5, 1),
            spreadRadius: .2)
      ]);
}
