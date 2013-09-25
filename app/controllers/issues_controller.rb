class IssuesController < ApplicationController
  respond_to :json

  def create
    issue = Issue.new(issue_params)
    issue.save
    respond_with(issue)
  end

  private

  def issue_params
    params.require(:issue).permit(:name,:description,:project_id)
  end
end
