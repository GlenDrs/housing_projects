require 'spec_helper'
require_relative '../lib/housing_project'

RSpec.describe HousingProject do
  subject(:housing_project) { described_class.new(name: "Adda", interests: 11, delivery_time: Date.today) }
  it '#initialize' do
    expect(housing_project).to be_a HousingProject
    expect(housing_project.name).to be_a String
    expect(housing_project.name).to eq "Adda"
    expect(housing_project.interests).to be_a Integer
    expect(housing_project.interests).to eq 11
    expect(housing_project.delivery_time).to be_a Date
    expect(housing_project.delivery_time).to eq Date.today
  end

end
