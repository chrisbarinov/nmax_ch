# frozen_string_literal: true

RSpec.describe WorkText do
  it "checks array sorting & slicing" do
    expect(WorkText.get_sorted_numbers_array(3, [1, 45, 78, 4, 6])).to eq([78, 45, 6])
    expect(WorkText.get_sorted_numbers_array(4, [1, 45, 78, 4, 6])).to eq([78, 45, 6, 4])
  end

  it "checks retrieving all numbers from text" do
    expect(WorkText.get_all_numbers_from_text("1dfg23,456")).to eq([1, 23, 456])
    expect(WorkText.get_all_numbers_from_text("1dfg23 456")).to eq([1, 23, 456])
  end
end
