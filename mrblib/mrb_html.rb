class HTML
  def HTML::escape(str)
    str.gsub(/&/, "&amp;").gsub(/\"/, "&quot;").gsub(/>/, "&gt;").gsub(/</, "&lt;").gsub(/'/, "&#39;")
  end
  
end
