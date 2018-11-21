class TokainakaController < ApplicationController
  before_action :authenticate_user!, only: [:board] #ログインしてないとダメだよ
  
  def index
  end
  
  def lend_top
  end
  
  
  def borrow_top
    #@villa = Villa.all #インスタンス変数に「Villa」のデータを全て取得・格納
    @q = Tvilla.ransack(params[:q])
    @villa = @q.result(distinct: true)
  end
  
  def detail
    @post = Tvilla.find_by(id: params[:id]) #Villaの中から該当するページの「id」を取得、該当ページのデータをインスタンス変数に格納
    
  end
  
  def board #オーナーに連絡するボタンがクリックされたら
    @post = Tvilla.find_by(id: params[:id]) #Villaの中から該当するページの「id」を取得、該当ページのデータをインスタンス変数に格納
  end
  
end
