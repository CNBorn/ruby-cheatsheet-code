def readfile(filename)
    begin
        input = File.new(filename, "r")
    rescue
        print "error when opening file:%s\n" % [filename], $!, "\n"
        return ""
    end
    content = ""
    #input.each{
    #    |char|
    #    content << char}

    content = input.readlines
    #content.each{|i| print i}

    return content
end

begin
    filename = "/etc/fstab"
    puts readfile(filename)
end

