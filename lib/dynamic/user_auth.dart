import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'dart:io' show Directory, Platform;
import 'package:path/path.dart' as path;

typedef GetUserLevelC = ffi.Int32 Function(
    ffi.Pointer<Utf8> username, ffi.Pointer<Utf8> password);
typedef GetUserLevelDart = int Function(
    ffi.Pointer<Utf8> username, ffi.Pointer<Utf8> password);

class LoginService {
  void login() {
    // Load the library
    var libraryPath = ('libuserauth.dylib');

    try {
      final dylib = ffi.DynamicLibrary.open(libraryPath);
    } catch (e) {
      print(e);
    }

    //   // Look up the function
    //   final GetUserLevelDart getUserLevel =
    //       dylib.lookupFunction<GetUserLevelC, GetUserLevelDart>('get_user_level');

    //   // Call the function
    //   final username = 'admin'.toNativeUtf8();
    //   final password = 'admin123'.toNativeUtf8();
    //   final level = getUserLevel(username, password);

    //   print('User level: $level');

    //   // Free the memory
    //   calloc.free(username);
    //   calloc.free(password);
  }
}

final loginService = LoginService();
