```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Correct way to handle potential missing key
      final value = jsonData.containsKey('nonExistentKey') ? jsonData['nonExistentKey'] : null;
      print(value); //Prints null if key is absent
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```