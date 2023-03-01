import 'package:flutter/material.dart';
import 'package:happyeat/utils/dimensions.dart';

class GridPage2 extends StatelessWidget {
  const GridPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: Dimensions.width10,
      padding: EdgeInsets.all(Dimensions.height5),
      shrinkWrap: true,

      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius10),
              color: Colors.grey
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius10),
            color: Colors.grey,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius10),
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
