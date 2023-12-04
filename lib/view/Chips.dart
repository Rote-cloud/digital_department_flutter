import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Color.dart';
import 'package:flutter_project/assets/Font.dart';
import 'package:flutter_project/assets/Size.dart';

class Chips extends StatefulWidget {
  const Chips({Key? key}) : super(key: key);
  @override
  State<Chips> createState() => _Chips();
}


class Tech
{
  String label;
  bool isSelected;
  Tech(this.label, this.isSelected);
}

class _Chips extends State<Chips> {

  bool selected = false;
  final List<Tech> _chipsList = [
    Tech("Еда", false),
    Tech("Саморазвитие", false),
    Tech("Технологии", false),
    Tech("Дом", false),
    Tech("Досуг", false),
    Tech("Забота о себе", false),
    Tech("Наука", false)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: MySize.paddingLR,
          right: MySize.paddingLR, bottom: MySize.paddingBottomChips),
      child: Wrap(
          spacing: MySize.spacingChips,
          runSpacing: MySize.spacingChips,
          children: techChips()
      ),
    );
  }
  List<Widget> techChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = FilterChip(
        label: Text(_chipsList[i].label,
          style: MyFont.textStyleChips),
        selectedColor: MyColor.colorChipsSelected,
        backgroundColor: MyColor.colorChipsBack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySize.borderRadiusChips),
          side: const BorderSide(color: MyColor.colorChipsBack),
        ),
        selected: _chipsList[i].isSelected,
        onSelected: (bool value) {
          setState(() {
            _chipsList[i].isSelected = value;
          });
        },
      );
      chips.add(item);
    }
    return chips;
  }
}