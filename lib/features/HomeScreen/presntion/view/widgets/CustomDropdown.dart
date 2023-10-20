import 'package:afktask/features/HomeScreen/presntion/view/metods/addselcteditems_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/customlabel.dart';

class CustomDropdown extends StatefulWidget {
  CustomDropdown(
      {this.setstt,
      required this.dropdawemitems,
      required this.labal,
      required this.dropdawnid})
      : super();
  List<String> dropdawemitems;
  String labal;
  int dropdawnid;
  Function? setstt;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}
class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customlabel(label: widget.labal),
        SizedBox(
          width: MediaQuery.of(context).size.width*.4,
          child: DropdownButtonFormField(
            isExpanded: true,
            hint: Text('select item', style: Styles.blackregulertext),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
              size: 25,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            validator: (value) => value == null ? "Select a item" : null,
            dropdownColor: Colors.white,
            items: widget.dropdawemitems
                .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e,
                      style: Styles.textsize18,
                      overflow: TextOverflow.ellipsis,
                    )))
                .toList(),
            onChanged: (value) {
              widget.dropdawnid == 1 ? widget.setstt!() : 1;
              addvalue(value!, context, widget.dropdawnid);
            },
          ),
        ),
      ],
    );
  }
}
