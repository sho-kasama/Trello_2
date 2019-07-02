## Trello apiを使って、自分のtodoタスクのデータを引っ張ってきた。


## Installation



Gemfileに ```gem 'ruby-trello'```


## Configuration


Basic authorization:

  1.Get your API public key from Trello via trello.com/app-key/ or the irb console as follows:
  
  ```
  $ gem install ruby-trello
  $ irb -rubygems
  irb> require 'trello'
  irb> Trello.open_public_key_url                         # copy your public key
  irb> Trello.open_authorization_url key: 'yourpublickey' # copy your member token
  ```
  
  2.You can now use the public key and member token in your app code:
  
  ```
  require 'trello'

  Trello.configure do |config|
    config.developer_public_key = TRELLO_DEVELOPER_PUBLIC_KEY # The "key" from step 1
    config.member_token = TRELLO_MEMBER_TOKEN # The token from step 2.
  end
  ```
## reference 

- <a href="https://github.com/jeremytregunna/ruby-trello">ruby-trello</a>
  
 
