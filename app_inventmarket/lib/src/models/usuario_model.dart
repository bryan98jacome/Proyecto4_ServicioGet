// To parse this JSON data, do
//
//     final usuario = usuarioFromJson(jsonString);

import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

class Usuario {
    Usuario({
        this.id,
        this.user,
        this.email,
        this.passwod,
        this.telefono,
    });

    String? id;
    String? user;
    String? email;
    String? passwod;
    String? telefono;

    factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        id: json["id"],
        user: json["user"],
        email: json["email"],
        passwod: json["passwod"],
        telefono: json["telefono"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "email": email,
        "passwod": passwod,
        "telefono": telefono,
    };
}
