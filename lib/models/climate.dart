class Climate {
  double? co;
  double? humidity;
  double? no2;
  double? o3;
  double? pressure;
  double? temperature;
  double? co2;

  Climate();

  Map<String, dynamic> toJson() => {
        'co': co,
        'humidity': humidity,
        'no2': no2,
        'o3': o3,
        'pressure': pressure,
        'temperature': temperature,
        'co2': co2,
      };

  Climate.fromSnapshot(snapshot)
      : co = snapshot.data()['co'],
        humidity = snapshot.data()['humidity'],
        no2 = snapshot.data()['no2'],
        o3 = snapshot.data()['o3'],
        pressure = snapshot.data()['pressure'],
        temperature = snapshot.data()['temperature'],
        co2 = snapshot.data()['co2'];
}
