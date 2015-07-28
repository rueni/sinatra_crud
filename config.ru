#in case bundler fails, load this...
require 'sinatra/base'

# loading all controllers + models
Dir.glob('./{controllers,models}/*.rb').each {
  |file| require file
}


# map the resource name to the conroller.
# This is the starting point the route from the controller is added to the end

#localhost:9292/
map('/') {run HomeController}
#localhost:9292/students/
map('/students') {run StudentsController}
