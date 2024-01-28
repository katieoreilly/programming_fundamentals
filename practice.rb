# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

ben_balance = 0

blockchain.each do |transaction|
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]
  amount = transaction["amount"]
  ben_balance -= amount if from_user == "ben"
  ben_balance += amount if to_user == "ben"
end

brian_balance = 0

blockchain.each do |transaction|
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]
  amount = transaction["amount"]
  brian_balance -= amount if from_user == "brian"
  brian_balance += amount if to_user == "brian"
end

evan_balance = 0

blockchain.each do |transaction|
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]
  amount = transaction["amount"]
  evan_balance -= amount if from_user == "evan"
  evan_balance += amount if to_user == "evan"
end

anthony_balance = 0

blockchain.each do |transaction|
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]
  amount = transaction["amount"]
  anthony_balance -= amount if from_user == "anthony"
  anthony_balance += amount if to_user == "anthony"
end

puts "Ben's KelloggCoin balance is #{ben_balance}"
puts "Brian's KelloggCoin balance is #{brian_balance}"
puts "Evan's KelloggCoin balance is #{evan_balance}"
puts "Anthony's KelloggCoin balance is #{anthony_balance}"
