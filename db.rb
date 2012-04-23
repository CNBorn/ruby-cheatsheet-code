require "mysql"

def readdb
    my = Mysql.new("127.0.0.1", "root", "pwd", "openparty")
    st = my.query("select * from core_topic")
    results = ''
    st.each {|each|results += each.to_s}
    my.close
    return results
end

begin
    puts readdb()
end

