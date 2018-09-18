require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        @team_name = params[:team_name]
        @team_motto = params[:team_motto]
        @team_members = params[:members]

        erb :team
    end


end
