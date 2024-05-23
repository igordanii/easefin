class CredentialsDTO {
  String email;
  String password;

  CredentialsDTO(this.email, this.password);

  Map<String, dynamic> toMap() {
    return {'email': email, 'password': password};
  }
}
