class Resources {
  double? food;
  double? oxygen;
  double? water;

  Resources();

  Map<String, dynamic> toJson() => {
        'food': food,
        'oxygen': oxygen,
        'water': water,
      };

  Resources.fromSnapshot(snapshot)
      : food = snapshot.data()['food'],
        oxygen = snapshot.data()['oxygen'],
        water = snapshot.data()['water'];
}
