import 'package:events/providers/app_providers.dart';
import 'package:events/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Column(
          children: [
            SwitchListTile(
              activeColor: Colors.green,
              value: Provider.of<AppProvider>(context).theme ==
                      ThemeConfig.lightThme
                  ? false
                  : true,
              onChanged: (v) {
                if (v) {
                  Provider.of<AppProvider>(context, listen: false)
                      .setTheme(ThemeConfig.darkTheme, 'dark');
                } else {
                  Provider.of<AppProvider>(context, listen: false)
                      .setTheme(ThemeConfig.lightThme, 'light');
                }
              },
              title: Text(
                'DarkMode',
                style: GoogleFonts.balooBhai2(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ));
  }
}
