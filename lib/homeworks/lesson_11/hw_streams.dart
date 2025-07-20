Stream<int> numberStream = Stream.fromIterable([1, 2, 3, 4, 5]);

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
}