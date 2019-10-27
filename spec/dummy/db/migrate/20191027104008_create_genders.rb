class CreateGenders < ActiveRecord::Migration[6.0]
  def up
    create_table :genders do |t|
      t.timestamps
    end

    Gender.create_translation_table!(name: :string)
    add_foreign_key :gender_translations, :genders
  end

  def down
    drop_table :gender_translations
    drop_table :genders
  end
end
