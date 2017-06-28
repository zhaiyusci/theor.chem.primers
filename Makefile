F90=sunf90
# F90=gfortran

qho.x: qho.f
	$(F90) qho.f -o qho.x

.PHONY: clean

clean:
	rm *.x *.o
