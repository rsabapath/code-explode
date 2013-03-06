require 'spec_helper'

describe "Projects" do
  describe "GET /projects" do
    it "display some projects" do
      @project = Project.create :author => 'Selesse',
                                :title => 'selesse.com',
                                :image => '/demo'
      visit projects_path
      page.should have_content 'Selesse'
    end
  end
end
