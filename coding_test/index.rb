hoge = {}
STDIN.gets.split.each{|item|
    temp = item.split("=")
    hoge[temp[0]] = temp[1]
}

print hoge
