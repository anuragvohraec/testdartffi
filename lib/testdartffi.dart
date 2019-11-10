import "dart:ffi";
import "package:ffi/ffi.dart";


import 'package:testdartffi/myextensions.dart';

typedef SAYHELLOTOUSER = Pointer<Utf8> Function(Pointer<Utf8> username);

final DynamicLibrary sayhellotouserlib = DynamicLibrary.open("libsayhellotouser.so");

final Pointer<Utf8> Function(Pointer<Utf8> username) sayhellotousernative=
sayhellotouserlib.lookup<NativeFunction<SAYHELLOTOUSER>>("sayhellotouser").asFunction();


String sayhellotouser(String username){
    Pointer<Utf8> usernamePointer = Utf8.toUtf8(username);
    Pointer<Utf8> r1 = sayhellotousernative(usernamePointer);
    String result = ExtUtf8.fromUtf8(r1);
    free(r1);
    return result;
}