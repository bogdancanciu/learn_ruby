def measure(repetitions = 1)
    start_time = Time.now
    repetitions.times { yield }
    end_time = Time.now

    (end_time - start_time) / repetitions.to_f
  end
  