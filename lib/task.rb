class Task < ActiveRecord::Base
  belongs_to(:list)

  scope(:not_done, -> do
    where({:done => false})
  end)
end


list = List.new({:name => "Epicodus stuff"})
task = list.tasks().new({:description => "learn Active Record"})
list.save()
task.list()
