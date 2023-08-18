import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ValueNotifier<int> _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = ValueNotifier<int>(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: RouterOutlet(),
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _selectedIndex,
        builder: (_, selectedIndex, __) => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Treinos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Exercícios',
            ),
          ],
          onTap: (value) {
            _selectedIndex.value = value;
            switch (value) {
              case 0:
                Modular.to.navigate('/workouts/');
                break;
              case 1:
                Modular.to.navigate('/exercises/');
                break;
            }
          },
          currentIndex: selectedIndex,
        ),
      ),
    );
  }
}
