require_relative './config/environment'

require 'sinatra/activerecord/rake'

task :start_server do 
    exec "rerun -b 'rackup config.ru' "
end

task :seed_data do  
    require_relative './db/seed_data'
end
