import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicePadding = MediaQuery.of(context).padding;
    final secureAreaBottom = devicePadding.bottom;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...cards.map((card) => _CardTypeOne(
                  elevation: card['elevation'],
                  label: card['label'],
                )),
            ...cards.map((card) => _CardTypeTwo(
                  elevation: card['elevation'],
                  label: card['label'],
                )),
            ...cards.map((card) => _CardTypeThree(
                  elevation: card['elevation'],
                  label: card['label'],
                )),
            ...cards.map((card) => _CardTypeFour(
                  elevation: card['elevation'],
                  label: card['label'],
                )),
            SizedBox(
              height: secureAreaBottom,
            )
          ],
        ),
      ),
    );
  }
}

class _CardTypeOne extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardTypeOne({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
          child: Column(children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  label,
                ))
          ])),
    );
  }
}

class _CardTypeTwo extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardTypeTwo({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colors.primary),
          borderRadius: BorderRadius.circular(16)),
      elevation: elevation,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
          child: Column(children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  label,
                ))
          ])),
    );
  }
}

class _CardTypeThree extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardTypeThree({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
          child: Column(children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  label,
                ))
          ])),
    );
  }
}

class _CardTypeFour extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardTypeFour({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Stack(children: [
        Image.network(
          'https://picsum.photos/600/400',
          height: 300,
          fit: BoxFit.cover,
        ),
        Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(16))),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            )),
      ]),
    );
  }
}
