#in case bundler fails, load this...
require 'sinatra/base'

# loading all cotrollers + models
Dir.glob('./{controllers,models}/*.rb').each {
  |file| require file
}

#localhost/students/
map('/students') {run StudentsController}
