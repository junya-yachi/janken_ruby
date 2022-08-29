class Janken_hoi
  def rock_paper_scisssor
    @counter = 0
    while @counter == 0
      puts "じゃんけん..."
      puts "0(グー) 1(チョキ) 2(パー) 3(やめる)"
      player_hand = gets.to_i
      enemy_hand = rand(3)
      
      puts "ほい！！"
      puts "------------"
      
      # ジャンケンのコード
      if player_hand == 3
        @counter += 1
        puts "じゃんけんを終了します。"
        break
      elsif player_hand == 0 || player_hand == 1 || player_hand == 2
        jankens = ["グー", "チョキ", "パー"]
        judge = {0 => "あいこで...", 1 => "あなたの負けです。", 2 => "あなたの勝ちです。"}
        @result = (player_hand - enemy_hand + 3) % 3
        puts "あなた:#{jankens[player_hand]}を出しました。"
        puts "相手:#{jankens[enemy_hand]}を出しました。"
        puts judge[@result]
        puts "------------"
        if @result == 2 || @result == 1
          hoi
        end
      else
        puts "その入力は受け付けていません。"
      end
    end
  end
  
  def hoi
    puts "あっち向いて..."
    puts "1(上) 2(右) 3(下) 4(左)"
    
    player_position = gets.to_i - 1
    enemy_position = rand(4) 
    puts "ほい！"
    
    puts "------------"
    positions = ["上", "右", "下", "左"]
    
    if player_position == 0 || player_position == 1 || player_position == 2 || player_position == 3
      puts "あなた:#{positions[player_position]}を指しました。"
      puts "相手:#{positions[enemy_position]}を向きました。"
      if player_position == enemy_position
        @counter += 1
        if @result == 2
          puts "おめでとう！あなたの勝ちです！"
        elsif @result == 1
          puts "残念...あなたの負けです..."
        end
      else
        puts "もう一度..."
        puts "------------"
        rock_paper_scisssor
      end
    else
      @counter += 1
      puts "その入力は受け付けていません"
    end
  end
end
  
janken_hoi = Janken_hoi.new
  
janken_hoi.rock_paper_scisssor()