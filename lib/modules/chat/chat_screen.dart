import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/curvedback.svg'),
                Text(
                  'John Doe',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF4CAF50),
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/clock.svg'),
                    SizedBox(width: 5),
                    Text('07:59:55')
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Text(
              'You have 8 hours to set up a date and time to receive the item from the donator. ',
            ),
          ),
          Divider(),
          SizedBox(height: 17),
          ChatBox()
        ],
      ),
    );
  }
}

class ChatBox extends StatelessWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Color(0xFF4CAF50),
                ),
                width: 250,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac sapien tellus netus et.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Text('3:55pm'),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('3:55pm'),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                width: 250,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac sapien tellus netus et.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
