class Waste {
  double? biodegradable;
  double? plastics;

  Waste();

  Map<String, dynamic> toJson() => {
        'biodegradable': biodegradable,
        'plastics': plastics,
      };

  Waste.fromSnapshot(snapshot)
      : biodegradable = snapshot.data()['biodegradable'],
        plastics = snapshot.data()['plastics'];
}
