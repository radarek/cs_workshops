class Configuration
  def initialize
    @keys = {}
  end

  def set(key, value)
    @keys[key] = value
  end

  def get(key)
    @keys[key]
  end

  def self.instance
    @instance ||= self.new   
  end
end


configuration = Configuration.instance
configuration.set("url", "http://google.pl")

puts configuration.get("url")


def say_hello
  url = Configuration.instance.get("url")
  puts "url: #{url}"
end

say_hello
