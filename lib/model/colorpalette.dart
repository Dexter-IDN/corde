class ColorPalette {
  String _baseColor;

  ColorPalette(this._baseColor);

  List<String> generateDarkShades() {
    var baseRgb = _hexToRgb(_baseColor);
    var shades = <String>[];
    for (var i = 1; i <= 6; i++) {
      var darknessPercentage = i * 10;
      var shadeRgb = _darkenRgb(baseRgb, darknessPercentage);
      var shadeHex = _rgbToHex(shadeRgb);
      shades.add(shadeHex);
    }
    return shades;
  }

  List<int> _hexToRgb(String hex) {
    var r = int.parse(hex.substring(1, 3), radix: 16);
    var g = int.parse(hex.substring(3, 5), radix: 16);
    var b = int.parse(hex.substring(5, 7), radix: 16);
    return [r, g, b];
  }

  String _rgbToHex(List<int> rgb) {
    var r = rgb[0].toRadixString(16).padLeft(2, '0');
    var g = rgb[1].toRadixString(16).padLeft(2, '0');
    var b = rgb[2].toRadixString(16).padLeft(2, '0');
    return '0xFF$r$g$b';
  }

  List<int> _darkenRgb(List<int> rgb, int percentage) {
    var factor = 1 - (percentage / 100);
    var newR = (rgb[0] * factor).round();
    var newG = (rgb[1] * factor).round();
    var newB = (rgb[2] * factor).round();
    return [newR, newG, newB];
  }
}
