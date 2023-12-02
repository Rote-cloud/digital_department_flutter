import 'package:flutter/material.dart';

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
    var _isSelected = false;
    Set<String> filters = <String>{};
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 32.0),
      child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: techChips()

      ),
    );
  }
  List<Widget> techChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = FilterChip(
        label: Text(_chipsList[i].label),
        selectedColor: const Color.fromRGBO(8, 166, 82, 1.0),
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.08)),
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