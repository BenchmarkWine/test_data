module TestData
  def self.statistics
    @statistics ||= Statistics.new
  end

  class Statistics
    attr_reader :load_count, :truncate_count

    def initialize
      reset
    end

    def count_load!
      @load_count += 1
    end

    def count_truncate!
      @truncate_count += 1
    end

    def reset
      @load_count = 0
      @truncate_count = 0
    end
  end
end
