require "net/http"
require "uri"

#Net::HTTP.get_print "checknerds.appspot.com", "/"
#Net::HTTP.get_print URI.parse("http://checknerds.appspot.com")

url = URI.parse("http://checknerds.appspot.com/") #it must end with '/'
req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req)
}
puts res.body
