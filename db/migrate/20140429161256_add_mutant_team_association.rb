class AddMutantTeamAssociation < ActiveRecord::Migration
  def change
    add_column :mutants, :team_id, :integer
  end
end
