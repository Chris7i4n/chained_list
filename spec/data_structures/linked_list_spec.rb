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

  describe "delete_node_by_value" do
    it "delete node by given value" do
      linked_list.append('1')
      linked_list.append('2')
      linked_list.append('3')
      linked_list.append('4')
      linked_list.delete_node_by_value("1")
      expect(linked_list.to_s).to eq('2 -> 3 -> 4 -> nil')
    end
  
    it "delete node by given value" do
      linked_list.append('1')
      linked_list.append('2')
      linked_list.append('3')
      linked_list.append('4')
      linked_list.delete_node_by_value("4")
      expect(linked_list.to_s).to eq('1 -> 2 -> 3 -> nil')
    end

    it "delete node by given value" do
      linked_list.append('1')
      linked_list.append('2')
      linked_list.append('3')
      linked_list.append('4')
      linked_list.delete_node_by_value("3")
      expect(linked_list.to_s).to eq('1 -> 2 -> 4 -> nil')
    end

  end
end
