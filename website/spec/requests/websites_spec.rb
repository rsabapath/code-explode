require 'spec_helper'

describe "Projects" do
  subject { page }

  describe "Projects Home Page" do
    before { visit projects_path }

    it { should have_selector('h1',   text: 'Projects') }
    it { should have_selector('title', text: full_title('Projects')) }
  end
end
