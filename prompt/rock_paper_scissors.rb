require 'tty-prompt'

# 手を定義
hands = [:rock, :paper, :scissors]

# 手同士の勝つ or 負ける or あいこを定義
result_table = {
    :rock => {
        :rock   => :draw,
        :paper  => :lose,
        :scissors   => :win,
    },
    :paper => {
        :rock   => :win,
        :paper  => :draw,
        :scissors   => :lose,
    },
    :scissors => {
        :rock   => :lose,
        :paper  => :win,
        :scissors   => :draw,
    },
}


# ユーザーの手を取得
prompt = TTY::Prompt.new
user_hand = prompt.select("your hand?", hands)

# コンピュータの手をランダムで取得
cpu_hand = hands.sample

# 結果を取得
result = result_table[user_hand][cpu_hand]

# 結果を表示
puts "your hand: #{user_hand} / cpu_hand: #{cpu_hand}"

case result
when :win
    puts "you win!"
when :lose
    puts "you lose!"
when :draw
    puts "draw!"
end
