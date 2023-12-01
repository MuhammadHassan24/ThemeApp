import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:themeandlangapp/screens/theme/theme_viewmodel.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ThemeManager(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Themes"),
            ),
            body: Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Switch(
                            value: viewModel.thememode == ThemeMode.light,
                            onChanged: (newValue) {
                              viewModel.changeTheme(newValue);
                            }),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            "Light",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Switch(
                            value: viewModel.thememode == ThemeMode.dark,
                            onChanged: (newValue) {
                              viewModel.changeTheme(newValue);
                            }),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Text("Dark", style: TextStyle(fontSize: 20)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
