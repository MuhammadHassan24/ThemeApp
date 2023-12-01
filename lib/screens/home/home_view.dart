import 'package:flutter/material.dart';
import 'package:themeandlangapp/screens/localization/locales_view.dart';
import 'package:themeandlangapp/screens/theme/theme_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Themes And Languege"),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Themes"),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ThemeView())),
                    ),
                    PopupMenuItem(
                        child: Text("Langueges"),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LocalesView()))),
                  ])
        ],
      ),
      
    );
  }
}
