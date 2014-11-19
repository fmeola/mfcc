function energy = loggedenergy(y,framesize)
	energy = 0;
	for n = 1 : framesize
		energy += y(n)**2;
	end;
	energy = log(energy);
	
energy;

