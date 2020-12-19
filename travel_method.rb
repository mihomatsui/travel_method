# プランを表示する
# 商品を選択する
# 人数を決定する
# 合計金額を計算する

# プランを表示する
def disp_plans(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan,i|
    puts "#{i}.#{plan[:place]}(#{plan[:price]}円)"
  end
end

# プランを選択する
def choose_plan(plans)
  while true
    print "プランの番号を選択 > "
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1〜3の番号を入力して下さい。"
  end
  chosen_plan = plans[select_plan_num - 1]
end



# 人数を決定する
def decide_number_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}ですね。"
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    number_of_people = gets.to_i
    break if number_of_people >= 1
    puts "1以上を入力して下さい。"
  end
end

# 合計金額を計算する
def calculate_charges(chosen_plan, number_of_people)
  total_price = chosen_plan[:price] * number_of_people
  if number_of_people >= 5
    total_price *= 0.9
    puts "5名以上ですので10%割引となります"
  end
  puts "合計料金は#{total_price.floor}円になります。"
end

# メソッドを呼び出す部分 ----------------------

# 旅行プランデータ
plans = [
  {place: "沖縄旅行", price: 10000},
  {place: "北海道旅行", price: 20000},
  {place: "九州旅行", price: 15000},
]

disp_plans(plans) # プランを表示する
chosen_plan = choose_plan(plans) # プランを選択する
number_of_people = decide_number_of_people(chosen_plan) # 人数を決定する
calculate_charges(chosen_plan, number_of_people) # 合計金額を計算する
