class Employee < ActiveRecord::Base
validates :Firstname, presence :true,length:{minium:5,maximum:10}
end
