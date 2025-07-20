Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Іван';
}

Future<String> fetchAge() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return '25';
}

String getAgeSuffix(int age) {
  if (age % 10 == 1 && age % 100 != 11) return 'рік';
  if ([2, 3, 4].contains(age % 10) && !(age % 100 >= 12 && age % 100 <= 14)) return 'роки';
  return 'років';
}

void main() async {
  final stopwatch = Stopwatch()..start();

  final results = await Future.wait([fetchName(), fetchAge()]);
  String name = results[0];
  String ageStr = results[1];
  int age = int.parse(ageStr);

  stopwatch.stop();
print('Мене звати $name');
print('Мені $age ${getAgeSuffix(age)}');
print('Time: ${stopwatch.elapsed}');
}