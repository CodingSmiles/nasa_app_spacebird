class BaseClimate {
  double? humidity;
  double? pressure;
  double? temperature;
  double? co2;

  BaseClimate();

  Map<String, dynamic> toJson() => {
        'humidity': humidity,
        'pressure': pressure,
        'temperature': temperature,
        'co2': co2,
      };

  BaseClimate.fromSnapshot(snapshot)
      : humidity = snapshot.data()['humidity'],
        pressure = snapshot.data()['pressure'],
        temperature = snapshot.data()['temperature'],
        co2 = snapshot.data()['co2'];
}
