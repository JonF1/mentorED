require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  let(:student) { create(:student) }
  describe "GET /student_dashboard" do
    context "after a student signs in" do
      before { sign_in student }
      it "returns http success" do
        student_path(student.id)
        expect(response).to have_http_status(:success)
      end
    end

    # context "if a student is not signed in" do
    #   it "redirects to log in form" do
    #     student_path(student.id)
    #     expect(response).to have_http_status(:redirect)
    #   end
    # end
  end

end
