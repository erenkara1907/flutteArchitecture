class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    // ignore: unnecessary_null_comparison
    if(instance == null) _instance = ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();

  String get logo => toPng("eren");

  String toPng(String name) => "assets/image/$name";
}

