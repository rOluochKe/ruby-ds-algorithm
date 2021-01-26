def transpose(string)
  # your code here
  help = ''
  a = 0
  stop = true
  while stop
    stop = false
    newString = ""
    for i in 0..string.length-1
      if(i!=string.length-1 && string[i]=='g' && string[i+1]=='n')
        newString += 'n'
        help = 'g'
        stop = true
      elsif (help!='')
        newString += help
        help = ''
      else
        newString += string[i]
        help = ''
      end
    end
    string = newString
    a += 1
  end
  return string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg