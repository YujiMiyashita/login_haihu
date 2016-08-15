class User < ActiveRecord::Base
  attr_accessor :remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  # 与えられた文字列のハッシュ値を返す
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  #ランダムなトークンを返す
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    #remember_tokenにランダムなトークンをセットする
    #remember_tokenの値を暗号化してDBに保存する
  end

  def authenticated_token(remember_token)
    #SafariとChromeを同時に開いていたケース
    #remember_digestとremember_tokenが一致するかを検証
  end

  def forget
    #remember_digestの値をnilにする
  end
end
