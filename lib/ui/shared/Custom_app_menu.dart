import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return (constraints.maxWidth > 520) ? _TableDesktopMenu() : _MobileMenu();
    });
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: double.infinity,
      child: Row(children: [
        CustomFlatButton(
          text: 'Contador Stateful',
          //  onPressed: () => Navigator.pushNamed(context, '/stateful'), tradicional
          onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
          color: Colors.pink.shade900,
        ),
        const SizedBox(
          width: 10.0,
        ),
        CustomFlatButton(
          text: 'Contador Provider',
          // onPressed: () => Navigator.pushNamed(context, '/provider'),
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
          color: Colors.pink.shade900,
        ),
        const SizedBox(
          width: 10.0,
        ),
        CustomFlatButton(
          text: 'Otra Pagina',
          // onPressed: () => Navigator.pushNamed(context, '/abc123'),
          onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          color: Colors.pink.shade900,
        )
      ]),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomFlatButton(
          text: 'Contador Stateful',
          //  onPressed: () => Navigator.pushNamed(context, '/stateful'), tradicional
          onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
          color: Colors.pink.shade900,
        ),
        const SizedBox(
          width: 10.0,
        ),
        CustomFlatButton(
          text: 'Contador Provider',
          // onPressed: () => Navigator.pushNamed(context, '/provider'),
          onPressed: () => locator<NavigationService>().navigateTo('/provider'),
          color: Colors.pink.shade900,
        ),
        const SizedBox(
          width: 10.0,
        ),
        CustomFlatButton(
          text: 'Otra Pagina',
          // onPressed: () => Navigator.pushNamed(context, '/abc123'),
          onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          color: Colors.pink.shade900,
        )
      ]),
    );
  }
}
