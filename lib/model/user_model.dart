/// Modelo de usuario devuelto por la API de Filmoly (WordPress).
///
/// Coincide con la estructura de `filmoly_get_full_user_data()` en `usuario.php`.
class FilmolyUser {
  int id;
  String username;
  String email;
  String displayName;
  String registeredAt;
  String description;
  String avatarUrl;
  String language;
  String dateFormat;
  String weekStart;
  String country;
  String birthdate;
  bool isRetrotecaVip;
  bool marketingConsent;
  String accountStatus;
  String lastLogin;
  String reviewStatus;
  String reviewPromptedAt;

  FilmolyUser({
    this.id = 0,
    this.username = '',
    this.email = '',
    this.displayName = '',
    this.registeredAt = '',
    this.description = '',
    this.avatarUrl = '',
    this.language = 'en',
    this.dateFormat = 'dd/MM/yyyy',
    this.weekStart = 'monday',
    this.country = '',
    this.birthdate = '',
    this.isRetrotecaVip = false,
    this.marketingConsent = false,
    this.accountStatus = 'active',
    this.lastLogin = '',
    this.reviewStatus = 'none',
    this.reviewPromptedAt = '',
  });

  bool get isEmpty => id == 0 && username.isEmpty;

  factory FilmolyUser.fromJson(Map<String, dynamic> json) {
    return FilmolyUser(
      id: (json['id'] as num?)?.toInt() ?? 0,
      username: (json['username'] as String?) ?? '',
      // El backend usa `user_email`; admitimos también `email` por compatibilidad.
      email: (json['user_email'] as String?) ??
          (json['email'] as String?) ??
          '',
      displayName: (json['display_name'] as String?) ?? '',
      registeredAt: (json['user_registered'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      avatarUrl: (json['avatar_url'] as String?) ?? '',
      language: (json['language'] as String?) ?? 'es',
      dateFormat: (json['date_format'] as String?) ?? 'dd/MM/yyyy',
      weekStart: (json['start_day_week'] as String?) ?? 'monday',
      country: (json['country'] as String?) ?? '',
      birthdate: (json['birthdate'] as String?) ?? '',
      isRetrotecaVip:
          (json['filmoly_retroteca_vip'] as bool?) ?? false,
      marketingConsent:
          (json['marketing_consent'] as bool?) ?? false,
      accountStatus: (json['account_status'] as String?) ?? 'active',
      lastLogin: (json['filmoly_last_login'] as String?) ?? '',
      reviewStatus:
          (json['filmoly_review_status'] as String?) ?? 'none',
      reviewPromptedAt:
          (json['filmoly_review_prompted_at'] as String?) ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        // El endpoint /user/update espera `user_email`
        'user_email': email,
        'display_name': displayName,
        'description': description,
        'language': language,
        'date_format': dateFormat,
        'start_day_week': weekStart,
        'country': country,
        'birthdate': birthdate,
        'marketing_consent': marketingConsent,
      };
}
