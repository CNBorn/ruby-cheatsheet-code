
def something
    longstring = "this is a long string."
    longstring['long'] = 'long long long long long'

    puts (longstring)

end

def hashtest
    person = {"name" => "XiaoYao Li",
              "age" => 19}
    #puts(person)
    print "Name:", person['name']
    print "Age:", person['age']

    group = {'leader'=>person,
             'follower'=>{'name'=>'YueRu Lin',
                          'age'=>18}
    }

    for index in 0...group.keys.length
        print group[group.keys[index]]
    end

    group.each{|eachk, eachv|
        puts(eachk, eachv)
    }

end

def stringtest
    string1 = "to be complete"
    string1 << "d"
    puts (string1)

    stringlist = ['a','b','city','delta']
    stringlist.each{|eachs| print eachs.capitalize << "\""}

end

def regexptest
    string = "I will drill a well from walla walla washington."
    regex = Regexp.new(/w.ll/)
    matched = regex.match(string)
    if matched
        puts matched[0]
        puts matched[1]
    else
        puts "NO MATCH"
    end

    puts "remained", matched.post_match

    while matched != nil
        puts matched[0]
        string1 = matched.post_match
        matched = regex.match(string1)
    end

end



begin

    #something()
    #hashtest()
    #stringtest()
    regexptest()
end



