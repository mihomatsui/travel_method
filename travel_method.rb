# 旅行データ
travels = [
  {place: "沖縄旅行", price: 10000},
  {place: "北海道旅行", price: 20000},
  {place: "九州旅行", price: 15000},
]

# プランの番号を選択
puts "旅行プランを選択してください。"
travels.each.with_index(1) do |travel,i|
  puts "#{i}.#{travel[:place]}(#{travel[:price]}円)"
end

# 商品を選択
while true
  print "プランの番号を選択 > "
  select_travel_num = gets.to_i
  break if (1..3).include?(select_travel_num)
  puts "1〜3の番号を入力して下さい。"
end
chosen_travel = travels[select_travel_num - 1]

puts "#{chosen_travel[:place]}ですね。"
puts "何名で予約されますか？"

# 人数を選択
while true
  print "人数を入力 > "
  number_of_people = gets.to_i
  break if number_of_people >= 1
  puts "1以上を入力して下さい。"
end

total_price = chosen_travel[:price] * number_of_people
if number_of_people >= 5
  total_price *= 0.9
  puts "5名以上ですので10%割引となります"
end

puts "合計料金は#{total_price.floor}円になります。"
