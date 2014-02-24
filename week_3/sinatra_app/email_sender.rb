require "pony"

class EmailSender

  def initialize(name, email, message)
    @email   = email
    @name    = name
    @message = message
  end

  def send
    Pony.mail(  :to       => 'tammam.kbeili@gmail.com',
                :from     => @email, 
                :reply_to => @email, 
                :subject  => "Hi You got a message from #{@name}", 
                :body     => @message,
                :via => :smtp,
                :via_options => {
                  :address              => 'smtp.gmail.com',
                  :port                 => '587',
                  :enable_starttls_auto => true,
                  :user_name            => 'answerawesome',
                  :password             => 'Sup3r$ecret',
                  :authentication       => :plain, 
                  :domain               => "localhost.localdomain"
                })
  end



end