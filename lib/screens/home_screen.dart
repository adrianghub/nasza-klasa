import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nasza_klasa_ui/config/palette.dart';
import 'package:nasza_klasa_ui/widgets/circle_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'nasza klasa',
            style: const TextStyle(
              color: Palette.facebookBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CircleButton(
              icon: Icons.search, 
              iconSize: 30.0, 
              onPressed: () => print('Szukaj')
              ),
            CircleButton(
              icon: MdiIcons.chatOutline, 
              iconSize: 30.0, 
              onPressed: () => print('Czatuj')
              ),
            CircleButton(
              icon: MdiIcons.menu, 
              iconSize: 30.0, 
              onPressed: () => print('Menu')
              )
          ],
        )
      ],
    ));
  }
}
