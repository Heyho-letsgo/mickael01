class CreateAptitudes < ActiveRecord::Migration
  def change
    create_table :aptitudes do |t|
      t.string :competence
      t.string :tag
      t.string :mail

      t.timestamps
    end
  end
end
