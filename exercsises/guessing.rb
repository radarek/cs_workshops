winning_number = rand(100)

loop do
  player_number = gets.to_i

  if winning_number < player_number
    puts "mniej"
  elsif winning_number > player_number
    puts "wiecej"
  else
    puts "zgadles, gratulacje!"
    break
  end
end
