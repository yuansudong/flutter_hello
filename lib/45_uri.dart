

void main() {


  var httpsUri = Uri(
      scheme: 'https',
      host: 'dart.dev',
      path: '/guides/libraries/library-tour',
      fragment: 'numbers');
  print(httpsUri); // https://dart.cn/guides/libraries/library-tour#numbers

  httpsUri = Uri(
      scheme: 'https',
      host: 'example.com',
      path: '/page/',
      queryParameters: {'search': 'blue', 'limit': '10'});
  print(httpsUri); // https://example.com/page/?search=blue&limit=10

  final mailtoUri = Uri(
      scheme: 'mailto',
      path: 'John.Doe@example.com',
      queryParameters: {'subject': 'Example'});
  print(mailtoUri); // mailto:John.Doe@example.com?subject=Example


  final httpsUri1 = Uri.https('example.com', 'api/fetch', {'limit': '10'});
  print(httpsUri1); // https://example.com/api/fetch?limit=10


  final fileUriUnix =
  Uri.file(r'/home/myself/images/image.png', windows: false);
  print(fileUriUnix); // file:///home/myself/images/image.png

  final fileUriWindows =
  Uri.file(r'C:\Users\myself\Documents\image.png', windows: true);
  print(fileUriWindows); // file:///C:/Users/myself/Documents/image.png



  final fileDirectory =
  Uri.directory('/home/myself/data/image', windows: false);
  print(fileDirectory); // file:///home/myself/data/image/

  final fileDirectoryWindows = Uri.directory('/data/images', windows: true);
  print(fileDirectoryWindows); //  file:///data/images/



  /// 下面是解析操作
  ///
  ///


  final uri = Uri.parse(
      'https://dart.cn/guides/libraries/library-tour#utility-classes');
  print(uri); // https://dart.cn
  print(uri.isScheme('https')); // true
  print(uri.origin); // https://dart.cn
  print(uri.host); // dart.dev
  print(uri.authority); // dart.dev
  print(uri.port); // 443
  print(uri.path); // guides/libraries/library-tour
  print(uri.pathSegments); // [guides, libraries, library-tour]
  print(uri.fragment); // utility-classes
  print(uri.hasQuery); // false
  print(uri.data); // null
  print(uri.queryParameters);
  print(uri.query);


}