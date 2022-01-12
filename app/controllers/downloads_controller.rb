class DownloadsController < ApplicationController
    before_action :authenticate_user!
    before_action :load_history, only: [:show]
    
  def show
    respond_to do |format|
        format.pdf { send_history_pdf }
        format.html {send_sample_html} if Rails.env.development?
    end
  end
 
  private
 
  def load_history
    @history = History.find_by(id: params[:history_id])
  end
 
  def create_history_pdf
    HistoryPdfService.new @history
  end

  def send_history_pdf
    send_file create_history_pdf.to_pdf,
      filename: history_pdf.filename,
      type: "application/pdf",
      disposition: "inline"
  end

  def send_sample_html
    render template: "downloads/show.html.erb", layout: "history_pdf" ,locals: { history: @history }
  end
end
