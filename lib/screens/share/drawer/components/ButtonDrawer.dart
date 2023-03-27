import 'package:flutter/material.dart';

class ButtonDrawer extends StatelessWidget {
  ButtonDrawer(
      {Key? key,
      required this.image,
        required this.nextScreen,
      required this.colorValue,
      required this.buttonText})
      : super(key: key);
  Widget image;
  Widget nextScreen;

  int colorValue;

  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => nextScreen,));
            },
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Row(
              children: [
                FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => nextScreen,));
                    },
                    backgroundColor: Color(colorValue),
                    mini: true,
                    child: image),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  buttonText,
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
