#!/usr/bin/env ruby
require 'redis'

redis = Redis.new(host: 'redisha_haproxy_1')

puts 'Starting App'

loop do
  key = 'time'
  value = Time.new
  redis.set(key, value)
  sleep 5
  puts redis.get(key)
end
