require 'spec_helper'

describe "Websites" do
  describe "GET /websites" do
    it "display some websites" do
      visit websites_path
    end
  end
end
