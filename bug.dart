```dart
List<int> numbers = [1, 2, 3, 4, 5];
int sum = numbers.reduce((a, b) => a + b);
print(sum); // Output: 15

List<String> strings = ['a', 'b', 'c'];
String combined = strings.reduce((a, b) => a + b);
print(combined); // Output: abc

// Unexpected behavior with null values
List<int?> nullableNumbers = [1, 2, null, 4, 5];
int? nullableSum = nullableNumbers.reduce((a, b) => a! + b!); // Error: Unhandled exception:
// NoSuchMethodError: The method '+' was called on null.
// This happens because reduce will encounter the null value and throw an error.
print(nullableSum); 
```