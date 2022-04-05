import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<void> showClaimPopup(BuildContext context) async {
  showDialog(
    context: context,
    builder: (ctx) {
      return Expanded(
        child: SimpleDialog(
            insetPadding: EdgeInsets.all(15),
            elevation: 2,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 15.0, left: 15.0, bottom: 0, top: 15),
                child: Text('Cancel',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 14,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 15.0, left: 15.0, bottom: 0, top: 5),
                child: SvgPicture.asset(
                  'assets/tick.svg',
                  // scale: 1,
                ),
              ),
              Container(
                width: 400,
                padding: const EdgeInsets.only(
                    right: 15.0, left: 15.0, bottom: 5, top: 15),
                child: Text('AWESOME',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              Column(
                children: [
                  Text(
                    'Thank you for your contribution to',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  Text(
                    'the community!',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  )
                ],
              ),
            ]),
      );
    },
  );
}
