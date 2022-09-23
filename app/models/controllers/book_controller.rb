class BookController < Sinatra::Base 

    get '/books' do 
        Book.all.to_json
    end

    post '/books/add/:title/:year' do 
        year = params[:year].to_i 
        title = params[:title]
        Book.create(title: title, year: year)
        "You have successfully added a new book"
    end
end