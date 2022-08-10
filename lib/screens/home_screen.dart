import 'package:flutter/material.dart';

import 'package:first_project/theme/app_theme.dart';
import 'package:first_project/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en Flutter')),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final item = AppRoutes.menuOptions[index];
            return ListTile(
              leading: Icon(item.icon, color: AppTheme.primary,),
              title: Text(item.nombre),
              onTap: () {
                Navigator.pushNamed(
                    context, item.route);
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
