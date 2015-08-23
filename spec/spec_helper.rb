require('rspec')
require('pg')
require('pry')
require('sinatra/activerecord')
require('./lib/task')
require('./lib/list')

RSpec.configure do |config|
  config.after(:each) do
    Task.all().each do |task|
      task.destroy()
    end
    List.all().each do |list|
      list.destroy()
    end
  end
end
