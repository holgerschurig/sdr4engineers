## See chapter 2.1 in "SDR for Engineers"

samples = 100; # how many samples per waves
waves = 5;     # how many waves to sum?


x = linspace(0, 4*pi, samples);


hold on;       # combine all following plot3() calls into one graphic

## Draw the individual waves
for i = 1:2:(waves*2)
  wave = sin(x*i) / i;
  plot3(repmat(i,1,samples), x, wave );

  ## Calculate the resulting sum signal
  if i == 1
	sum = wave;
  else
	sum += wave;
  end
end

## Draw the sum signal
plot3(repmat(-2, 1,samples), x, sum );

## Define how the x/y/z axis should display:
zlim([-2, 2.5]); # keep highness in control
axis('tic[]');   # no tics
##xlabel("x");
##ylabel("y");
##zlabel("z");

## Rotate view into a nice 3D position:
view([-30, 40]);

## Alternative front view:
##view(90,0);
