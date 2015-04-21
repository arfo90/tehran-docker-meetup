require 'grape'

class Hi < Grape::API

 version 'v1', using: :header, vendor: 'tehranDocker'

 resource :hi do
  desc "Saying Hi"
  get do
   'Hi there!,,,'
  end
 end
end
