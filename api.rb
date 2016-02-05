require 'sinatra/base'

require 'sinatra/json'
require 'sinatra/namespace'
require 'sinatra/config_file'

require 'pg'
require 'active_record'
require 'redis'
require 'redis-namespace'

require 'json'
require 'logger'

class Sinatra::Base 
  register Sinatra::Namespace
  helpers Sinatra::JSON

  set :json_encoder, :to_json
  set :api_version, 1
end

REDIS = Redis.new(host: 'localhost', port: 6379)
$redis = Redis::Namespace.new('CREDIBILITY', redis: REDIS)

require './models'
require './v1/api'

