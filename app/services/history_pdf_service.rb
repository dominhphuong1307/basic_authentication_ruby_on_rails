 class HistoryPdfService
 
  def initialize(history)
    @history = history
  end
 
  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("#{Rails.root}/public/history.pdf")
  end
 
  def filename
    "History #{history.id}.pdf"
  end
 
  private
 
    attr_reader :history
 
    def as_html
      render template: "downloads/show.html.erb", layout: "history_pdf"  ,locals: { history: history }
    end
end