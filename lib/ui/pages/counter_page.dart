import 'package:bases_web/ui/shared/Custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CustomAppMenu(),
          const Spacer(),
          const Text(
            'Stateful counter',
            style: TextStyle(fontSize: 20.0),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Counter: $counter',
                style:
                    const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  text: 'Incrementar',
                  onPressed: () => setState(
                        () => counter++,
                      )),
              CustomFlatButton(
                  text: 'Incrementar',
                  onPressed: () => setState(
                        () => counter--,
                      )),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
