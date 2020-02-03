require './pokemon'

pikachu = Pokemon.new(name: "ピカチュウ", hp: 20)
fushigidane = Pokemon.new(name: "フシギダネ", hp: 20)

def damage(attack:, victim:, amount:)
  puts "----------------------------------------"
  victim.hp -= amount
  puts "#{attack.name} の こうげき！"
  puts "#{victim.name} は #{amount} の ダメージ を うけた！"
  if victim.hp <= 0
    victim.hp = 0
    puts "#{victim.name} を たおした！"
  else
    puts "#{victim.name} の げんざい の HP: #{victim.hp}"
  end
end

while true
  for attack in [pikachu, fushigidane] do

    if attack.name == "ピカチュウ"
      victim = fushigidane
    elsif attack.name == "フシギダネ"
      victim = pikachu
    end

    if victim.hp <= 0 || attack.hp <= 0
      break
    else
      damage(attack: attack, victim: victim, amount: Random.rand(10))
    end
  end
  if pikachu.hp <= 0 || fushigidane.hp <= 0
    break
  end
end