// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyNewDropdownButton extends StatefulWidget {
  const MyNewDropdownButton({super.key});

  @override
  State<MyNewDropdownButton> createState() => _MyNewDropdownButtonState();
}

class _MyNewDropdownButtonState extends State<MyNewDropdownButton> {
  String selectTrue = 'Y';
  final List<String> listYN = <String>['Y', 'N'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: selectTrue,
        items: listYN
            .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        onChanged: (String? text) {
          setState(() {
            selectTrue = text ?? "待選擇";
          });
        });
  }
}

class MyDropdownButton extends StatefulWidget {
  final List<String> listYorN;
  const MyDropdownButton(
    this.listYorN, {
    Key? key,
  }) : super(key: key);

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

// const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _MyDropdownButtonState extends State<MyDropdownButton> {
  // MyDropdownButtonState();
  // _MyDropdownButtonState(List<String>? list);
// const MyDropdownButton({super.key, this.listYorN});
  // {last final List<String>? listYorN}

  String dropdownValue = "";

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.listYorN.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: widget.listYorN.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

// class GotoNextWidget extends StatefulWidget {
//   const GotoNextWidget(this.screen,{super.key,this.isReplaced= false});
// final bool isReplaced;
// final Widget screen;
//   @override
//   State<GotoNextWidget> createState() => _GotoNextWidgetState();
// }

// class _GotoNextWidgetState extends State<GotoNextWidget> {
//   @override
//   Widget build(BuildContext context,Widget screen) {
//     if (widget.isReplaced) {
//     return Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => screen));
//   } else {
//     return Navigator.push(
//         context, MaterialPageRoute(builder: (context) => screen));
//   }
//   }
// }

// ignore: camel_case_types
class Well_PassField extends StatefulWidget {
  final String? iniV;
  final String? hint;
  final String? label;
  final Function? onChange;

  const Well_PassField(
      {this.iniV, this.hint, this.label, this.onChange, super.key});

  @override
  State<Well_PassField> createState() => _PassTextState();
}

class _PassTextState extends State<Well_PassField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: Stack(
        children: [
          TextFormField(
            obscureText: obscure,
            initialValue: widget.iniV,
            decoration: InputDecoration(
                hintText: widget.hint,
                label: widget.label == null ? null : Text(widget.label!)),
            onChanged: (v) {
              widget.onChange!(v);
            },
          ),
          Positioned(
            top: 24,
            right: 0,
            child: GestureDetector(
              child: Icon(obscure ? Icons.visibility : Icons.visibility_off),
              onTap: () {
                obscure = !obscure;
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}
