require "sinatra"
require "./email_sender"

get "/" do
  erb :index, :layout => :main_layout
end

get "/contact" do
  erb :contact, layout: :main_layout
end

post "/contact" do
  email_sender = EmailSender.new(params[:name], params[:email], params[:message])
  email_sender.send
  erb :thank_you, layout: :main_layout
end

get "/survey" do
  erb :survey, layout: :main_layout
end

post "/survey" do
  work_best         = params[:work_best]
  consider_yourself = params[:consider_yourself]
  interested_in     = params[:interested_in]

  if work_best == "with_deadlines" && consider_yourself == "rational" && interested_in == "ideas"
    @personality_type = "Rational"
  elsif work_best == "with_deadlines" && consider_yourself == "rational" && interested_in == "facts"
    @personality_type = "Guardian"
  elsif  work_best == "without_deadlines" && consider_yourself == "rational" && interested_in == "ideas"
    @personality_type = "Idealist"
  elsif  work_best == "without_deadlines" && consider_yourself == "rational" && interested_in == "facts"
    @personality_type = "Artisan"
  elsif  work_best == "with_deadlines" && consider_yourself == "compassionate" && interested_in == "ideas"
    @personality_type = "Idealist"
  elsif  work_best == "with_deadlines" && consider_yourself == "compassionate" && interested_in == "facts"
    @personality_type = "Guardian"
  elsif  work_best == "without_deadlines" && consider_yourself == "compassionate" && interested_in == "ideas"
    @personality_type = "Idealist"
  elsif  work_best == "without_deadlines" && consider_yourself == "compassionate" && interested_in == "facts"
    @personality_type = "Artisan"
  end

  erb :results, layout: :main_layout
end