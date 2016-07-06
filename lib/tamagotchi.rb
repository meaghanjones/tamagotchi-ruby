require('pry')

class Tamagotchi
  @@tamagotchi=[]
  define_method(:initialize) do |name|
    @name = name
    @alive = true
    @food = 10
    @sleep = 10
    @activity = 10
    @birth = Time.now()
    @time_since_last_fed = Time.now()
    @time_since_last_sleep = Time.now()
    @time_since_last_activity = Time.now()
  end
  define_singleton_method(:all) do
    @@tamagotchi
  end
  define_method(:save) do
    @@tamagotchi[0]=self
  end
  define_method(:age) do
    @age = (Time.now-@birth/60).to_i
  end

  define_method(:food) do
    @food
  end

  define_method(:sleep) do
    @sleep
  end

  define_method(:activity) do
    @activity
  end

  define_method(:name) do
    @name
  end

  define_method(:alive?) do
    @alive
  end

  define_method(:add_food) do
    @food = @food - ((Time.now() - @time_since_last_fed)).to_i
    if @food > 0
      @food = 10
      @time_since_last_fed = Time.now()
    else
      @alive = false
    end
    @food
  end

  define_method(:add_sleep) do
    @sleep = @sleep - ((Time.now() - @time_since_last_sleep)/20).to_i
    if @sleep > 0
      @sleep = 10
      @time_since_last_sleep = Time.now()
    else
      @alive = false
    end
    @sleep
  end

  define_method(:add_activity) do
    @activity = @activity - ((Time.now() - @time_since_last_activity)/30).to_i
    if @activity > 0
      @activity = 10
      @time_since_last_activity = Time.now()
    else
      @alive = false
    end
    @activity
  end
end
