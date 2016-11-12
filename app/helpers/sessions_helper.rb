module SessionsHelper
  def log_in(user)
    sessionメソッドを使ってセッションにuser_idを入れる
  end

  # 現在ログインしているユーザーを返す
  def current_user
    セッションにuser_idがある時にそれを元にusersテーブルから値を取得する
  end

  def logged_in?
    current_userにログインしているユーザーがいればtrue
  end

  def log_out
    セッションに入れた値をnilにする
    current_userをnilにする
  end

end
