class Image
  attr_writer :arr

  def initialize(arr)
    self.arr = arr
  end

  def output_image
    @arr.each do |row|
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

