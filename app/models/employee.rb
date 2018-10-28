class Employee < ActiveRecord::Base
  validates:Firstname,presence:true,length:{minimum:5,maximum:30}
#validates :firstname, presence :true
end
