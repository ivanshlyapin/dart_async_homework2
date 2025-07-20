Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Іван';
}

void main() async {
  String name = await fetchName();
  print('Мене звати $name');
}