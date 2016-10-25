require 'rails_helper'

describe Message do
  it "is invalid without a name" do
    message = build(:message, content: "")
    message.valid?
    expect(message.errors[:content]).to include("can't be blank")
  end
end
