
ROOTDIR=$(pwd)
cc = gcc
prom = mkbootfs
obj = mkbootfs.o
inc = -I./
lib = -lc
CFLAG = 
$(prom): $(obj)
	$(cc) -o $(prom) $(obj) $(lib)

%.o: %.c
	$(cc) -c $< -o $@ $(inc) $(CFLAG)

clean:
	rm -rf $(obj) $(prom)

