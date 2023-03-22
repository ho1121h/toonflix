import 'dart:math';

void main() {
  var numbers = generateLottoNumbers();
  print(numbers);
}

List<int> generateLottoNumbers() {
  var random = Random();
  var numbers = <int>{};
  while (numbers.length < 6) {
    numbers.add(random.nextInt(45) + 1);
  }
  return numbers.toList()..sort();
}
