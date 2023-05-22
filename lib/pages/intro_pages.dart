import 'package:flutter/material.dart';
import 'package:foodmarketappui/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 160),
            child: Image.asset('images/avocado.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver foods at your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35),
            ),
          ),
          Text('Fresh items everyday',
            style: TextStyle(
              color: Colors.grey,
            ),),
          Spacer(),
          GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(
                builder: (_)=>HomePage())),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
