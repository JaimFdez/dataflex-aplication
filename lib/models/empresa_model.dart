class Empresa {
  // String origen;
  String? ruc;
  String? nombreORazonSocial;
  String? estado;
  String? condicion;
  List<dynamic>? ubigeo;
  String? direccion;
  String? direccionCompleta;

  Empresa({
    // this.origen,
    this.ruc,
    this.nombreORazonSocial,
    this.estado,
    this.condicion,
    this.ubigeo,
    this.direccion,
    this.direccionCompleta,
  });

  Empresa.fromJsonMap(Map<String, dynamic> jsonData) {
    // origen                        =  jsonData['origen'];
    ruc                             =  jsonData['ruc'];
    nombreORazonSocial  =  jsonData['nombre_o_razon_social'];
    estado                        =  jsonData['estado'];
    condicion                     =  jsonData['condicion'];
    ubigeo                        =  jsonData['ubigeo'];
    direccion                     =  jsonData['direccion'];
    direccionCompleta       =  jsonData['direccion_completa'];
  }
}
