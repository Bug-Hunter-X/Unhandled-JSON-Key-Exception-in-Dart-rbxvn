# Unhandled JSON Key Exception in Dart

This repository demonstrates a common error in Dart when handling JSON responses: attempting to access a non-existent key in a JSON object.  The `bug.dart` file shows the flawed code, while `bugSolution.dart` provides a corrected version.

The problem arises when trying to access a key that is not present in the JSON data.  This results in an exception, which, if not caught, can crash the application.  The solution involves checking for the key's existence before accessing it.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe the exception when trying to access 'nonExistentKey'.
3. Run `bugSolution.dart`. Note the absence of exceptions as the code safely handles the missing key.

## Solution

The key is to implement proper error handling using `try-catch` blocks and checking for the existence of keys before accessing them using `containsKey()`.