```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonResponse = json.decode(response.body);
      // Accessing a non-existent key will throw an exception
      final value = jsonResponse['nonExistentKey']; 
      print(value); // This line will not be reached if the key doesn't exist
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```