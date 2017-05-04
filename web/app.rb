require 'sinatra'

# 手を定義
hands = [:rock, :paper, :scissors]

# 手同士の勝つ or 負ける or あいこを定義
result_table = {
  :rock => {
    :rock     => :draw,
    :paper    => :win,
    :scissors => :lose,
  },
  :paper => {
    :rock     => :lose,
    :paper    => :draw,
    :scissors => :win,
  },
  :scissors => {
    :rock     => :win,
    :paper    => :lose,
    :scissors => :draw,
  },
}

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end

get '/' do
    erb :index
end

post '/dicision' do
  puts params
  user_hand = params[:hand].to_sym
  cpu_hand = hands.sample

  # 結果を取得
  result = result_table[cpu_hand][user_hand]

  erb :dicision, :locals => {
    user_hand: user_hand,
    cpu_hand:  cpu_hand,
    result:    result,
  }
end
