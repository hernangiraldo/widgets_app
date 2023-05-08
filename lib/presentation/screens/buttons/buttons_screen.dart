import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 16,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('FilledButton')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc_outlined),
              label: const Text('FilledButtonIcon'),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('FilledButton')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit_sharp),
              label: const Text('FilledButtonIcon'),
            ),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
              label: const Text('TextIcon'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration),
              color: colors.primary,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary),
                    iconColor: const MaterialStatePropertyAll(Colors.white))),

            // CUSTOM BUTTON
            const CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Text('Eso', style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
