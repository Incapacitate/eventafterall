class EventMailer < ApplicationMailer
  default from: 'no-reply@assholevent.fr'
 
  def new_event(event)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @event = event 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @event.user.email, subject: 'Bienvenue chez nous !') 
  end
end