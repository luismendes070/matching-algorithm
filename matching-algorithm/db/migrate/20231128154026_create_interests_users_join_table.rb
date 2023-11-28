class CreateInterestsUsersJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :interests_users, id: false do |t|
      t.belongs_to :interest
      t.belongs_to :user
    end
  end
end
