class Method {
  const Method({this.title, this.subtitle, this.description, this.imagePath});

  final String title;
  final String subtitle;
  final String description;
  final String imagePath;
}

final List<Method> methods = <Method>[
  Method(
    title: 'Hario V60',
    subtitle: 'POUR OVER',
    description:
        'Simple yet effective method that allows the subtlest of flavours to shine through.',
    imagePath: 'graphics/hario.png',
  ),
  Method(
    title: 'Aeropress',
    subtitle: 'IMMERSION',
    description:
        'A method known for its brightness, emphasizes aromatic and acidic notes.',
    imagePath: 'graphics/aeropress.png',
  ),
];
