class HTML
  def HTML::escape(string)
    string.gsub(/&/, "&amp;").gsub(/\"/, "&quot;").gsub(/>/, "&gt;").gsub(/</, "&lt;").gsub(/'/, "&#39;")
  end

  def HTML::unescape(string)
    string.gsub(/&(amp|quot|gt|lt|\#[0-9]+|\#x[0-9A-Fa-f]+);/) do
      match = $1.dup
      case match
      when 'amp'                 then '&'
      when 'quot'                then '"'
      when 'gt'                  then '>'
      when 'lt'                  then '<'
      when /\A#0*(\d+)\z/        then
        if Integer($1) < 256
          Integer($1).chr
        else
          if Integer($1) < 65536
            [Integer($1)].pack("U")
          else
            "&##{$1};"
          end
        end
      when /\A#x([0-9a-f]+)\z/ then
        if $1.hex < 256
          $1.hex.chr
        else
          if $1.hex < 65536
            [$1.hex].pack("U")
          else
            "&#x#{$1};"
          end
        end
      else
        "&#{match};"
      end
    end
  end
end
