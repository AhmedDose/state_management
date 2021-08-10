// An example of Strams

// Future = تقوم بارجاع داتا واحدة فقط

// Stream = تقوم بارجاع اكثر من داتا
// async* = هذا يعني انه يعود ب ستريم وليس فيوتشر
// ******************************
// void main() async {
//   Stream<int> stream = countStream(10);
//   int sum = await sumStream(stream);

//   print(sum);
// }

Stream<int> countStream(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int item in stream) {
    sum += item;
  }
  return sum;
}
