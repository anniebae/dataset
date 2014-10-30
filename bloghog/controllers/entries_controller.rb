class EntriesController < ApplicationController
  get '/' do
    @entries = Entry.all
    erb :'entries/index'
  end

  get '/new' do
    authenticate!
    erb :'entries/new'
  end

  post '/' do
    entry = Entry.create!(params[:entry])
    redirect '/entries'
  end

  get '/:id/edit' do
    authenticate!
    @entry = Entry.find(params[:id])
    erb :'entries/edit'
  end

  patch '/:id' do
    entry = Entry.find(params[:id])
    entry.update(params[:entry])
    redirect '/entries'
  end

  get '/:id' do
    @entry = Entry.find(params[:id])
    erb :'entries/show'
  end

  delete '/:id' do
    authenticate!
    Entry.destroy(params[:id])
    redirect '/entries'
  end

end