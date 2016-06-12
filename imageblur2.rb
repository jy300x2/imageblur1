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

  # transform method not 100% complete 
  def transform
    # determine length of inner array
    count = self.pixels[0].length
    # flatten array
    flat_array = self.pixels.flatten
    # create new array to store index where '1' exists
    index_array = []
    # iterate through array and find where '1' exists
    flat_array.each_index do |number|
      if flat_array[number] == 1
        index_array << number
      end
    end
    # to convert the zero to the left and right of the 1, find the
    # index of 1 and subtract 1 to get the index to convert the left 0 
    # and add 1 to the index to get the 0 to the right. To get the top 
    # and bottom zeroes, subtract the length of the array to convert the 
    # top 0 and add the length of the array to get the bottom 0.
    index_array.each do |index|
      flat_array[index-count] = 1
      flat_array[index-1] = 1
      flat_array[index+1] = 1
      flat_array[index+count] = 1
    end
    p flat_array
  end

end

image = Image.new([
 [0, 0, 0, 0],
 [0, 1, 0, 0],
 [0, 0, 1, 0],
 [0, 0, 0, 0]
])

image.output_image
image.transform