require "sinatra"

require "data_mapper"

enable :sessions


helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end


DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/contacter.db")

class Contact

  include DataMapper::Resource

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String
  property :phone_number, String

  property :note, Text
end

DataMapper.finalize

Contact.auto_upgrade!

get "/" do
  session[:visit_count] ||= 0
  session[:visit_count] += 1
  erb :index, layout: :default
end

post '/contact' do
  Contact.create(first_name:   params[:first_name], 
                 last_name:    params[:last_name],
                 email:        params[:email],
                 phone_number: params[:phone_number])
  erb :thank_you, layout: :default
end

get "/listing" do
  protected!
  @all_contacts = Contact.all
  erb :listing, layout: :default
end

get "/note/:id" do |id|
  protected!
  @contact = Contact.get id
  erb :note, layout: :default
end

post "/note/:id" do |id|
  protected!
  @contact = Contact.get id
  @contact.note = params[:note]
  @contact.save
  redirect to("/listing")
end

get "/delete/:id" do |id|
  protected!
  contact = Contact.get id
  contact.destroy
  redirect to "listing"
end


get "/name/:name_of_user" do |name_of_user|
  session[:name] = name_of_user
  redirect to("/")
end

get "/css/:css" do |css|
  session[:css] = css
  redirect back
end

