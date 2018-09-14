module ApplicationHelper

  def auth_helper
    tag = "<input type='hidden' name='authenticity_token' value='#{form_authenticity_token}'/>".html_safe
  end

  def ugly_lyrics(lyrics)
    lyric_lines = lyrics.split("\n")
    res = []
    lyric_lines.each do |line|
      str = "♫ " + line 
      res << str.html_safe
    end
    res.join("\n")
  end

end
