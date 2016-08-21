module SessionsHelper
  def log_in(user)
    セッションメソッドを使ってユーザーのidをセッションに入れる。
  end

  def remember(user)
    #ランダムな文字列を生成し、それをハッシュ化してremember_digestとして保存する
    #クッキーにuser_idを入れる
    #クッキーにremember_tokenを入れる
  end

  # 現在ログインしているユーザーを返す
  def current_user
    if セッションが持続している時
      セッションの情報を元にユーザーを@current_userにセットする
    elsif #セッションが切れたがクッキーにuser_idが残っている時
      #クッキーに残っているuser_idを頼りにfind_byメソッドでユーザーを取り出す。
      #DBにハッシュ化された:remember_digestとCookiesに暗号化された:remember_tokenが一致するかを検証
      #trueならログイン
      #@current_userにそのユーザーをセットする
    end
  end

  def logged_in?
    current_userがnilでないことを確かめる。
  end

  #remember_digestをDBから削除するとともにCookiesのremember_token, user_idを削除する

  def log_out
    #DBに保存されているremember_digestの値を削除する
    #クッキーからuser_idの値を削除する
    #クッキーからremember_tokenの値を削除する
    セッションを破棄する
    @current_userの中身をnilにする
  end

end
