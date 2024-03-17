def janken
    puts "じゃんけん..."
    puts "0(グー)1(チョキー)2(パー)3(戦わない)"
    
    player_hand = gets.to_i
    
     if player_hand == 3
      puts "ゲームを終了します"
      exit
     elsif player_hand > 3
      puts "正しい値を入力してください"
      return janken
     end  
    
    program_hand = rand(3)
    jyankens = ["グー","チョキ","パー"]
      
        puts "ホイ！"
        puts "あなた:#{jyankens[player_hand]}を出しました"
        puts "相手:#{jyankens[program_hand]}を出しました"
        puts "--------------"
        @result = "win"
    
        if player_hand == program_hand
            puts "あいこで〜"
            janken
        elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand== 2)||(player_hand ==2 && program_hand == 0)
        @result = "win"
            return acchimuite_hoi
        elsif (player_hand == 1 && program_hand == 0)||(player_hand == 2 && program_hand == 1)||(player_hand == 0 && program_hand == 2)
        @result = "lose"
            return acchimuite_hoi
        else
            puts "終わり"
        end
    end
    
    def acchimuite_hoi
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)" 
    player_direction = gets.to_i
    directions = ["上","下","左","右"]
    puts "ホイ！"
    
    program_direction = rand(4)
    puts "あなた：#{directions[player_direction]}"
    puts "相手：#{directions[program_direction]}"
     puts "---------------------"
     
     if (player_direction == program_direction) && (@result == "win")
         puts "あなたの勝ちです。"
     elsif (program_direction == player_direction) && (@result == "lose")
         puts "あなたの負けです。"
     else
         return janken
     end
    end
    janken