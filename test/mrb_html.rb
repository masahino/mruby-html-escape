##
## HTML Test
##

assert("HTML.escape") do
  assert_equal("&#39;&amp;&quot;&gt;&lt;", HTML.escape("'&\"><"))
end

assert("HTML.unescape") do
  assert_equal("'&\"><", HTML.unescape("&#39;&amp;&quot;&gt;&lt;"))
end
