class CreateMutants < ActiveRecord::Migration
  def change
    create_table :mutants do |t|
      t.string :mutant_name
      t.string :special_abilities
      t.string :real_name
      t.timestamps
    end
  end
end
