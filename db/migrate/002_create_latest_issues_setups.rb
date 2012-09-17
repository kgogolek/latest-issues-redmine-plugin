class CreateLatestIssuesSetups < ActiveRecord::Migration
  def change
    create_table :latest_issues_setups do |t|
      t.integer :max_count
      t.string :side
    end
  end
end
