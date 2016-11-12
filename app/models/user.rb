class User < ActiveRecord::Base

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  パスワードを「●●●●●●」にするメソッドを定義する

  validates :name, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

end
