```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with 'response.body'
      final jsonData = jsonDecode(response.body);
      // Accessing a non existent key
      final value = jsonData['nonExistentKey']; 
      print(value);
    } else {
      // Handle error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    //Handle exception
    print('Error: $e');
  }
}
```