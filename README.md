# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart applications that involves accessing non-existent keys within JSON responses.  The `bug.dart` file showcases the problematic code, while `bugSolution.dart` provides a corrected version with robust error handling.

The original code attempts to access a key ('nonExistentKey') that may not always be present in the JSON response.  This leads to a runtime exception if the key is missing.  The solution implements proper error checking using `containsKey()` before accessing the key, preventing crashes and providing graceful error handling.