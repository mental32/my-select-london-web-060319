def my_select(s)
  seq = []

  if block_given?

    step = 0
    limit = s.size

    while step != limit do
      if yield(s[step])
        seq << s[step]
      end
      step += 1
    end
  end

  seq
end
