require 'order'

describe Order do
  it { is_expected.to be_instance_of Order }

  it "should initially be empty" do
    expect(subject.order).to eq({})
  end

  it { should respond_to(:add).with(1).argument }

  it "should allow items to be added to the order" do
    subject.add("test")
    expect(subject.order).to eq ({"test" => 1})
  end

  it "should record the number of items that have been added" do
    3.times { subject.add("test") }
    expect(subject.order).to eq ({"test" => 3})
  end
end
