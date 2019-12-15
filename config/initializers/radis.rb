require 'redis'
uri = URI.parse["REDIS"]
REDIS = Redis.new(host: uri.host, port: uri.port)
