def showsomething
    puts("hello, world, in function")
end


def practicefor
    for ss in 1...10
        puts('hello')
    end
end

def testarray
    games = ["StarCraft", "Portal", "Uncharted"]
    for index in 0...games.length
        puts(games[index])
    end
end


def testiter
    games = ["God of War II", "Burnout", "Battlefield"]
    games.each {|each_game| puts each_game}
    games.each do
        |each_game|
        puts each_game, "- Item"
    end
end


def testiterspecial
    games = ['a','b','c']
    puts games.collect {
        |each_game|
        each_game.capitalize
    }

    caped = games.collect do
        |each|
        each.capitalize
    end
    puts caped

end

def testwhile
    ss = 5
    while ss > 0
        puts ss
        ss -= 1
    end
end


def testif
    condition = 'cc'
    if condition == 'cc'
        puts 'condition is right.'
    end
    puts 'condition is right' if condition == 'cc'
end



def testarrayoperation
    array = ['a', 'b', 'c', 'd']
    puts array.push("e")
    puts array.pop
    puts array
    puts array.unshift("1")
end


begin
    showsomething
    puts("hello, world.")
    practicefor
    testarray
    testiter
    testiterspecial
    testwhile
    testif
    testarrayoperation
end
