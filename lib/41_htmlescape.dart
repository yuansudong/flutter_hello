



import 'dart:convert';

void main() {


  /**
   *
   *   将相关字符进行转义化。
   *
   * */

  const htmlEscapeMode = HtmlEscapeMode(
    name: 'custom',
    escapeLtGt: true,
    escapeQuot: false,
    escapeApos: false,
    escapeSlash: false,
  );

  const HtmlEscape htmlEscape = HtmlEscape(htmlEscapeMode);
  String unescaped = 'Text & subject';
  String escaped = htmlEscape.convert(unescaped);
  print(escaped); // Text &amp; subject

  unescaped = '10 > 1 and 1 < 10';
  escaped = htmlEscape.convert(unescaped);
  print(escaped); // 10 &gt; 1 and 1 &lt; 10

  unescaped = "Single-quoted: 'text'";
  escaped = htmlEscape.convert(unescaped);
  print(escaped); // Single-quoted: 'text'

  unescaped = 'Double-quoted: "text"';
  escaped = htmlEscape.convert(unescaped);
  print(escaped); // Double-quoted: "text"

  unescaped = 'Path: /system/';
  escaped = htmlEscape.convert(unescaped);
  print(escaped); // Path: /system/
}