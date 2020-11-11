def clock_angle(time)
    # code your solution here
    time = time.split(":")
    hour = time[0].to_i
    minute = time[1].to_i

    # to calculate the hour:
        # for each hour, add 5min to the 60min proportional angle
        # for each minute, add 
    # to calculate the minute:
        # proportional to the min/60

    # to calculate the angle
        # use abs value for difference between angles
        # take the side that is < 180
        # subtract from 360 to get proportion
    # binding.pry

    hour_position = ((hour * 5 + (minute / 12.0)) / 60.00) * 360
    minute_position = (minute / 60.00) * 360

    if hour_position == 360.0
        hour_position = 0
    end

    if minute_position == 360.0
        minute_position = 0
    end

    if hour_position > minute_position
        return hour_position - minute_position
    else
        return minute_position - hour_position
    end
end
