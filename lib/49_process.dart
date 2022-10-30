

import 'dart:io';

Future<void> main() async {
  var process = await Process.start('ls', ['-l']);
  var exitCode = await process.exitCode;
  print('exit code: $exitCode');
  // List all files in the current directory in UNIX-like systems.
  // 这样就可以看到输入结果
  var result = await Process.run('ls', ['-l']);
  print(result.stdout);
  print(result.exitCode);
}