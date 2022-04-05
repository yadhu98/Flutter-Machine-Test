import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machine_test_flutter/main.dart';
import 'package:machine_test_flutter/modules/home/widgets/main_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Leftover',
                      style: TextStyle(
                        color: Color(0xFF4CAF50),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  TextButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF4CAF50),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    label: Text('Filter'),
                  ),
                  // ButtonFilter(),
                  SizedBox(width: 20),
                  Icon(Icons.search),
                ])
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
                  child: FeedCard(),
                  elevation: 2,
                );
              }),
              itemCount: 20,
              separatorBuilder: ((context, index) {
                return SizedBox(
                  height: 10,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

// class ButtonFilter extends StatelessWidget {
//   const ButtonFilter({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color(0xFF4CAF50),
//       ),
//       child: Row(
//         children: [
//           Text('Filter'),
//           SvgPicture.asset('assets/filter.svg'),
//         ],
//       ),
//     );
//   }
// }
