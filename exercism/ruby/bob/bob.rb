class Bob
  ACRONYMS = ['OK', 'DMV', 'SCUBA', 'IOU']

  def hey(remark)
    if silence?(remark)
      return 'Fine. Be that way!'
    elsif shouting?(remark)
      return 'Whoa, chill out!'
    elsif question?(remark)
      return 'Sure.'
    else
      return "Whatever."
    end
  end

  def silence?(remark)
    remark = downcase_acronyms(remark)
    remark.match("^.*\\S{1,}.*$") ? false : true
  end

  def shouting?(remark)
    remark = downcase_acronyms(remark)
    remark.match("^.*[A-Z]{2,}.*$") ? true : false
  end

  def question?(remark)
    remark = downcase_acronyms(remark)
    remark[(remark.length - 1)] == '?' ? true : false
  end

  def downcase_acronyms(remark)
    # This seems really horrible performance-wise; you'd have to check against some enormous list of acronyms for each phrase. But I don't really see an alternative
    result = remark
    ACRONYMS.each do |acronym|
      result.gsub!(acronym, acronym.downcase)
    end
    result
  end
end

