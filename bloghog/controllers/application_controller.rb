require 'sinatra/base'

class ApplicationController < Sinatra::Base
  helpers Sinatra::AuthenticationHelper
  helpers ActiveSupport::Inflector
  ActiveRecord::Base.establish_connection({
    adapter: 'postgresql',
    database: 'bloghog_db'
    })

  set :public_folder, File.expand_path('../../public', __FILE__)
  set :views, File.expand_path('../../views', __FILE__)

  enable :sessions, :method_override


  get '/' do
    @entries = Entry.order(created_at: :desc).limit(100)
    if current_user
      erb :authenticated
    else
      erb :not_authenticated
    end
  end
end