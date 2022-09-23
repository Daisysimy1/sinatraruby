require 'sinatra'

class App < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/moringa' do 
        '<h3>Hello moringa! Student</h3>'
    end

    get '/student' do
        {
            name: "Purity",
            age: 29,
            course: "web fundamentals with sinatra"
        }.to_json 
    end
    
    post '/double/:num' do
        number =params["num"]
        {
            num: number,
            double: number.to_i * 2
        }.to_json
    end
end

run App 