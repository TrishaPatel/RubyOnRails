class AddFieldsToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :Lastname, :string
    add_column :employees,:gender,:string
      end
end
