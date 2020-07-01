require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  let(:conversation) { create(:conversation) }
  let(:mentor) { create(:mentor, email: "test2_mentor@example.com") }
  describe "GET /messages/index" do
    context "after a mentor signs in" do
      before { sign_in mentor }
      it "returns http success" do
        conversation_messages_path(conversation.id)
        expect(response).to have_http_status(:success)
      end
    end
  end

 # Need to create test to test that a conversation cannot be reached unless it is a conversation linked to the logged in user
end
