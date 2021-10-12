class Method {
  final String name;
  final String efficiency;
  final String regimen;
  final String metodo;
  final String image;
  final String description;
  final String details;
  final List<String> benefits;
  Use use;
  final List<String> pros;
  final List<String> cons;

  Method({
    required this.name,
    required this.efficiency,
    required this.regimen,
    required this.metodo,
    required this.image,
    required this.description,
    required this.details,
    required this.benefits,
    required this.use,
    required this.pros,
    required this.cons,
  });

  factory Method.fromJson(Map<String, dynamic> parsedJson) {
    List<String> listBenefits = (parsedJson['benefits']).cast<String>();
    List<String> listPros = (parsedJson["pros"]).cast<String>();
    List<String> listCons = (parsedJson["cons"]).cast<String>();

    return Method(
      name: parsedJson["name"],
      efficiency: parsedJson["efficiency"],
      regimen: parsedJson["regimen"],
      metodo: parsedJson["metodo"],
      image: parsedJson["image"],
      description: parsedJson["description"],
      details: parsedJson["details"],
      benefits: listBenefits,
      use: Use.fromJson(parsedJson["use"]),
      cons: listCons,
      pros: listPros,
    );
  }
}

class Use {
  final List<String> imgs;
  final String description;

  Use({
    required this.imgs,
    required this.description,
  });

  factory Use.fromJson(Map<String, dynamic> parsedJson) {
    List<String> listImgs = (parsedJson['imgs']).cast<String>();
    return Use(
      imgs: listImgs,
      description: parsedJson["description"],
    );
  }
}
