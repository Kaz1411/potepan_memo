#csvファイル読み込み
require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

#1or2の文字列取得
memo_type = gets.chomp

#1(新規でメモを作成)

if memo_type == "1"
 puts "拡張子を除いたファイル名を記入してください"
 
 #ファイル名の取得
 file_name = gets.chomp
 puts "メモしたい内容を記入してください。"
 puts "入力後、ctrl + D を押してください。"
 
 #ターミナルから文字列を取得
 content = STDIN.read
 
 #CSVファイルの書き込み
 CSV.open("#{file_name}.csv","w") do |csv|
  csv << ["#{content}"]
 end

#2(メモを編集)
elsif memo_type == "2"
  puts "編集したいファイル名を拡張子を除いて記入してください"
  
   #ファイル名の取得
  file_name = gets.chomp
  puts "編集したい内容を記入してください。"
  puts "入力後、ctrl + D を押してください。"
  
   #ターミナルから編集内容を取得
  edit = STDIN.read
  
  #CSVファイルの書き込み
  CSV.open("#{file_name}.csv","a") do |csv|
   csv << ["#{edit}"]
  end

　
end
