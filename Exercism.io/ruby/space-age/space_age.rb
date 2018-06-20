module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
# Space
class SpaceAge
  def initialize(second)
    @second = second.to_f
    @earthsecond = 31_557_600
  end

  def on_earth
    (@second / @earthsecond).round(2)
  end

  def on_mercury
    cal = 0.2408467 * @earthsecond
    (@second / cal).round(2)
  end

  def on_venus
    cal = 0.61519726 * @earthsecond
    (@second / cal).round(2)
  end

  def on_mars
    cal = 1.8808158 * @earthsecond
    (@second / cal).round(2)
  end

  def on_jupiter
    cal = 11.862615 * @earthsecond
    (@second / cal).round(2)
  end

  def on_saturn
    cal = 29.447498 * @earthsecond
    (@second / cal).round(2)
  end

  def on_uranus
    cal = 84.016846 * @earthsecond
    (@second / cal).round(2)
  end

  def on_neptune
    cal = 164.79132 * @earthsecond
    (@second / cal).round(2)
  end
end
