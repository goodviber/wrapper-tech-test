class Wrapper
  def wrap(string, length)
    string.gsub(/(.{1,#{length}})([- +]|$\n?)|(.{1,#{length}})/, "\\1\\3\n")
  end
end
