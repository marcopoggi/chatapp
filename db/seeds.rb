user1 = User.create(email: 'a@gmail.com', password: 'Pass1234', password_confirmation: 'Pass1234')
user2 = User.create(email: 'b@gmail.com', password: 'Pass1234', password_confirmation: 'Pass1234')
user3 = User.create(email: 'c@gmail.com', password: 'Pass1234', password_confirmation: 'Pass1234')

# agrego a un contacto abro un conversacion

conversation = Conversation.create
Participant.create(user: user1, conversation:)
Participant.create(user: user2, conversation:)

conversation2 = Conversation.create
Participant.create(user: user1, conversation: conversation2)
Participant.create(user: user3, conversation: conversation2)

conversation3 = Conversation.create
Participant.create(user: user2, conversation: conversation3)
Participant.create(user: user3, conversation: conversation3)

# user 1 escribe a user 2
Message.create(content: 'hola user 2', user: user1, conversation:)

# user 2 escribe a user 1
Message.create(content: 'hola user 1', user: user2, conversation:)
