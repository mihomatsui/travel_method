require "./methods.rb"

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
