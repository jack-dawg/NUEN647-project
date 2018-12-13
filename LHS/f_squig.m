function [ f_squig ] = f_squig( f0, f1, squig )
f_squig = f0*hermite(0,squig) + f1*hermite(1,squig);
end