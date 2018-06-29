## The Gibbs phenomenon states: if you add sine waves at specific
## frequency/phase/amplitude combinations you can approximate a square
## wave.
##
## This is an interative graph, press the "SPACE" bar to see the next
## iteration. When done, press "Ctrl-W" to close the graph.
##
## See chapter 2.1 in "SDR for Engineers"

samples = 200;   # how many samples per waves
waves = 10;      # how many waves to sum?

pkg load signal; # for sinewave()

for n = 1:2:(waves*2-1)
  ##     sinewave(samples,      period) / amplitude
  wave = sinewave(samples, samples/2/n) / n;
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
