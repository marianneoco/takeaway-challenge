require 'order'

describe Order do

  let(:order_double) { double :order }

  it { is_expected.to be_instance_of Order }

  it "should initially be empty" do
    expect(subject.order).to eq({})
  end

  it { should respond_to(:add).with(1).argument }

  it "should allow items to be added to the order" do
    subject.add("test")
    expect(subject.order).to eq ( { "test" => 1 } )
  end

  it "should record the number of items that have been added" do
    3.times { subject.add("test") }
    expect(subject.order).to eq ( { "test" => 3 } )
  end

  it { should respond_to(:total_cost) }

  it "should tally up the total cost" do
    2.times { subject.add("Margherita") }
    expect(subject.total_cost).to eq "Total cost is £17.90"
  end

  it "should respond to the confirm method and send a message" do
    allow(:order_double).to receive(:confirm)
    expect(:order_double.confirm)
  end
end
