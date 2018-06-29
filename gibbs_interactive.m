## See chapter 2.1 in "SDR for Engineers"

for n = 1:2:15
  ##     sinewave(samples, period) / amplitude
  wave = sinewave(1000,    500/n)  / n;
  if n == 1
	sum = wave;
	orig = wave;
  else
	sum += wave;
  end
  plot(sum, '-', orig, '.');
  title("From Sine to Square");

  ## Press space bar to see the next step in the animation
  waitforbuttonpress();
end
