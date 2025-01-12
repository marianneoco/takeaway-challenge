require 'takeaway'

describe Takeaway do

  it { is_expected.to be_instance_of Takeaway }

  it "should contain a list of dishes with prices" do
    expect(Takeaway::MENU).to be_instance_of Hash
  end

  it "should allow the user to place an order" do
    expect(subject).to respond_to(:start_order)
  end
end
