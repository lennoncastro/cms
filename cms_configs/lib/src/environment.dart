enum Environment {
  production('https://api.example.com'),
  development('http://localhost:8080'),
  testing('https://test-api.example.com');

  final String baseUrl;

  const Environment(this.baseUrl);
}
