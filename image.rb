class Image
  attr_accessor :pixels

  def initialize(pixels)
    self.pixels = pixels
  end

  def output_image
    self.pixels.each do |row|
      puts row.join(' ')
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image

