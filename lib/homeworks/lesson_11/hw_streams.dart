Stream<int> numberStream = Stream.fromIterable([1, 2, 3, 4, 5]);

Stream<int> countdownStream() =>
    Stream.periodic(Duration(seconds: 1), (x) => x + 1).take(10);

Future<void> useAwaitFor() async {
  await for (int num in numberStream) {
    print('await for: $num');
  }
}

void useListen() {
  numberStream.listen((num) {
    print('listen: $num');
  });
}

void main() async {
  await useAwaitFor();
  useListen();

  await for (var i in countdownStream()) {
print('$i...');
  }
}