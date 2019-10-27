require "rails_helper"

describe GlobalizeCurrentTranslation do
  let(:gender) { create :gender, :male }

  it "creates a relationship that uses the current locale" do
    expect(gender.current_translation.name).to eq "Mand"
  end
end
