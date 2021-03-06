class Cart
  attr_reader :contents

  def initialize(initial_contents)
    @contents = initial_contents || Hash.new(0)
  end

  def total_count
    @contents.values.sum
  end

  def add_item(item)
    if @contents[item.id.to_s] != nil
      @contents[item.id.to_s] += 1
    else
      @contents[item.id.to_s] = 1
    end
  end

  def count_of(item_id)
    @contents[item_id.to_s].to_i
  end

  def subtract_item(item_id)
    if @contents[item_id.to_s] != nil
      @contents[item_id.to_s] -= 1
    else
      @contents[item_id.to_s] = 0
    end
  end
end
