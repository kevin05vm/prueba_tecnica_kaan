import 'package:flutter/material.dart';

import '../../const/colors.dart' as ColorsConst;

class SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 14.0, top: 4.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search for a meal or drink',
            hintStyle: TextStyle(color: ColorsConst.FILTRO_INACTIVO),
            suffixIcon: GestureDetector(
              child: Image.asset('lib/assets/icons/search.png'),
              onTap: () => FocusScope.of(context).unfocus()
            )
          )
        )
      )
    );
  }
}