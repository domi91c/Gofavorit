require 'spec_helper'

describe "PostAttachments", :type => :request do
  describe "GET /post_attachments" do
    it "works! (now write some real specs)" do
      get post_attachments_path
      expect(response.status).to be(200)
    end
  end
end
