class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect { |i| verse(i) }.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, " + "no more bottles of beer.\n" +
        "Go to the store and buy some more, " + "99 bottles of beer on the wall.\n"
    when 1
      "#{number} bottle of beer on the wall, " +
        "#{number} bottle of beer.\n" +
        "Take it down and pass it around, " + "no more bottles of beer on the wall.\n"
    when 2
      "#{number} bottles of beer on the wall, " +
        "#{number} bottles of beer.\n" +
        "Take one down and pass it around, " +
        "#{number - 1} #{container(number - 1)} of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, " +
        "#{number} bottles of beer.\n" +
        "Take one down and pass it around, " +
        "#{number - 1} #{container(number - 1)} of beer on the wall.\n"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end
end
