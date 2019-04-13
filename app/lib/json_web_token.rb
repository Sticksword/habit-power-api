# lib/json_web_token.rb

class JsonWebToken
  # Rails 5.2+ now use credentials - https://medium.com/cedarcode/rails-5-2-credentials-9b3324851336
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, Rails.application.credentials.secret_key_base)
  end

  def self.decode(token)
    body = JWT.decode(token, Rails.application.credentials.secret_key_base)[0]
    HashWithIndifferentAccess.new body
  rescue
    nil
  end
end
