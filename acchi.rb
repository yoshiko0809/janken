# じゃんけんメソッド
def janken
  puts "0(グー) 1(チョキ) 2(パー) "
  player_hand = gets.chomp.to_i # 入力された数字をplayer_hand変数に代入
  program_hand = rand(3) # ランダムな数字0~2をprogram_hand変数に代入
  if player_hand >= 3 # 入力された数字が指定した数字以外だった場合
    puts "0(グー) 1(チョキ) 2(パー) のいずれかを入力してください"
    return true
  end
  jankens = ["グー", "チョキ", "パー"]
   puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"
   if player_hand == program_hand
    puts "あいこで..."
    return true
  elsif
    (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです！"
    judge = Judge.new("あなた") # acchi_muite_hoiメソッドの呼び出し
    judge.acchi_muite_hoi
    return false
  else
    puts "あなたの負けです！"
    judge = Judge.new("相手")
    judge.acchi_muite_hoi
    return false
  end
end
# あっち向いてホイメソッド
class Judge
def initialize(name)
  @name = name
end

def acchi_muite_hoi
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"
  player_direction = gets.chomp.to_i
   program_direction = rand(4)
   if player_direction >= 4 # 入力された数字が指定した数字以外だった場合
    puts "0(上) 1(下) 2(左) 3(右)のいずれかを入力してください"
    return
  end
  directions = ["上", "下", "左", "右"]
  puts "あなたの向き:#{directions[player_direction]}, 相手の向き:#{directions[program_direction]}"
  if player_direction == program_direction
    puts "#{@name}の勝ちです！"
    return false
  else
    puts "残念！じゃんけん〜"
    janken
  end
end
# 実行部分
puts "じゃんけん..."
janken_game = true # 初期値
while janken_game do janken_game = janken # じゃんけんメソッドの返り値がfalseになったらwhile文が終了する
end
end
