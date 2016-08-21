class SessionsController < ApplicationController
  def new
    ログインしていたらトップ画面へリダイレクトさせる。
  end

  def create
    find_byメソッドを使って、emailから該当のユーザーを取り出す。

    if password_digestに保存されている「暗号化されたパスワード」とログイン画面でユーザーが入力した「暗号化されたパスワード」が一致していたら
      emailとパスワードどちらかが間違っているとfalseを返すようにする。
      log_in(user)
      #remember(user)
      トップ画面にリダイレクトさせる。
    else
      間違っているのでrenderを使ってログイン画面に戻す。
    end
  end

  def destroy
    log_out（複数のウィンドウ（タブ）でログインしていた時にも対応させる）
    トップ画面にリダイレクトさせる。
  end
end
