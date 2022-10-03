function p = tiss_sum(N)
  tosses = randi(0:1, 1, N);
  p = sum(tosses)/N;
 end
 
 function p = dice_sim(N)
    r1 = randi(6,1,N)
    r2 = randi(6,1,N)
    sums = r1 + r2;
    freq_odd = sum(rem(sums,2) == 1)
    freq_7 = sum(sums == 7)
    p = freq_7 / freq_odd
end

function p = dice_sim2(N)
    r1 = randi(6,1,N)
    r2 = randi(6,1,N)
    freq_diff = sum(r1 ~= r2)
    freq_diff_and_6 = sum((r1 == 6 | r2 == 6)& r1 ~= r2)
end
 
