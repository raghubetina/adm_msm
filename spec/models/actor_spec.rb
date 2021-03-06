require "rails_helper"

RSpec.describe Actor, type: :model do
  describe "Direct Associations" do
    it { should have_many(:characters) }
  end

  describe "InDirect Associations" do
    it { should have_many(:filmography) }
  end

  describe "Validations" do
    it { should validate_presence_of(:name) }
  end
end
