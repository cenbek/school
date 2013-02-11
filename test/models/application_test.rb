require "minitest_helper"

describe Application do
  before do
    @application = Application.new
  end

  it "must be valid" do
    @application.valid?.must_equal true
  end
end
