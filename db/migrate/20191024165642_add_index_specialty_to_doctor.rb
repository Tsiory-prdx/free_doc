class AddIndexSpecialtyToDoctor < ActiveRecord::Migration[6.0]
  def change
    add_reference :doctors, :specialty, foreign_key: true
  end
end
