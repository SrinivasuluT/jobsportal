class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :company
      t.string :location
      t.string :jobdescription
      t.string :experience
      t.string :designation
      t.string :role
      t.string :rolecategory
      t.string :educationqualification
      t.string :jobspecification
      t.string :candidatedetails
      t.string :contactdetails

      t.timestamps
    end
  end
end
