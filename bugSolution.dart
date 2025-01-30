```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];

// Solution 1: Using fold() with a default value
int sum = nullableNumbers.fold<int>(0, (a, b) => a + (b ?? 0));
print(sum); // Output: 12

// Solution 2: Filtering out null values before using reduce
int sum2 = nullableNumbers.whereType<int>().reduce((a, b) => a + b);
print(sum2); // Output: 12

// Solution 3: Handling nulls within the reduce function
int? sum3 = nullableNumbers.reduce((a, b) => a == null ? b : (b == null ? a : a + b));
print(sum3); // Output: 12
```