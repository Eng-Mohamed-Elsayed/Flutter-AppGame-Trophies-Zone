import 'package:flutter/material.dart';
import 'package:trophies_zone/Components/global-counter.dart';

class CardTrophies extends StatefulWidget {
  CardTrophies(
      {required this.data,
      required this.index,
      required this.edit,
      required this.checkColor});
  final data;
  final edit;
  final int index;
  final Color checkColor;

  @override
  _CardTrophiesState createState() => _CardTrophiesState();
}

class _CardTrophiesState extends State<CardTrophies> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: Text(
            widget.data.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          checkColor: widget.checkColor,
          activeColor: Colors.white,
          subtitle: Text(
            widget.data.description,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          value: widget.data.flag,
          onChanged: (bool? value) {
            setState(() {
              widget.data.flag = value!;
              widget.edit.setflag = widget.index;
              (value == true)
                  ? CheckedCounter().setCounterInc = 1
                  : CheckedCounter().setCounterDec = 1;
            });
          },
          secondary: Image.network(
            widget.data.imageUrl,
          ),
        ),
        Divider(
          height: 5,
          thickness: 1,
          color: Colors.white,
        )
      ],
    );
  }
}
