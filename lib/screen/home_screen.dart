import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                disabledBackgroundColor: Colors.grey,
                foregroundColor: Colors.white,
                disabledForegroundColor: Colors.red,
                shadowColor: Colors.green,
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(color: Colors.black, width: 12.0),
                // minimumSize: Size(300, 150),
                // maximumSize: Size(100, 150),
                // fixedSize: Size(100, 150),
              ),
              child: Text('Elevated'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.red,
                shadowColor: Colors.black,
                elevation: 10.0,
              ),
              child: Text('Outlined'),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((
                  Set<MaterialState> states,
                ) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  }
                  return Colors.black;
                }),
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black;
                  }

                  if (states.contains(MaterialState.disabled)) {
                    return Colors.red;
                  }

                  return Colors.white;
                }),
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Size(200, 150);
                  }

                  return Size(300, 200);
                }),
              ),
              child: Text('Text'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: CircleBorder(
                  eccentricity: 1
                ),
              ),
              child: Text('Outlined'),
            ),
            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(
                Icons.keyboard_alt_outlined,
              ),
              label: Text('키보드'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              icon: Icon(
                Icons.abc,
              ),
              label: Text('Outlined icon'),
              
            )
          ],
        ),
      ),
    );
  }
}
