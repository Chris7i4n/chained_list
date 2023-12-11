require_relative "../spec_helper"
require_relative "../../data_structures/linked_list"

RSpec.describe LinkedList do
  let(:linked_list) { LinkedList.new }

  describe "#to_s" do
    it 'returns a string representation of the list' do
      linked_list.append('a')
      linked_list.append('b')
      linked_list.append('c')
      expect(linked_list.to_s).to eq("a -> b -> c -> nil")
    end
  end
  
  describe '#append' do
    it 'adds a new element to the end of the list' do
      linked_list.append('a')
      expect(linked_list.to_s).to eq('a -> nil')
    end
  end

  describe '#invert_list' do
    it 'inverts the list' do
      linked_list.append('a')
      linked_list.append('b')
      linked_list.append('c')
      linked_list.invert_list
      expect(linked_list.to_s).to eq('c -> b -> a -> nil')
    end
  end

end
