require 'cinch'

class Ping < CinchPlugin
  include Cinch::Plugin
  match /ping (.+)/,  method: :ping_udp
  set :help, "!ping <query> - Ping icmp host <query>"

  def ping_udp(m, query)
    result = `ping -q -c 3 #{query}`
    if ($?.exitstatus == 0)
       m.reply("#{query} is up")
     else
       m.reply("#{query} is down")
     end
  end
end