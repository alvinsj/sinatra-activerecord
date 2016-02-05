ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
Dir.glob('./models/*.rb').each {|model| require model}
