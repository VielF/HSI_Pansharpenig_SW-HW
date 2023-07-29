CXXOBJ	= libauxiliar.o libpansharpening.o pansharpening_ipol.o

BIN	= pansharpening_ipol

hdrdir= -I/usr/local/include/ -I/usr/include/
libdir= -L/usr/local/lib/ -L/usr/lib/           

COPT	= -O3 -funroll-loops -fomit-frame-pointer  -Wall -Wextra  
CFLAGS  +=  -g $(COPT) $(hdrdir) -fopenmp

LDFLAGS +=  $(CXXFLAGS) $(libdir) -lpng -lgomp -lgdal

default: $(CXXOBJ)  $(BIN)


$(CXXOBJ) : %.o : %.cpp 
	$(CXX) -std=c++98 -c $(CFLAGS)   $< -o $@

$(BIN) : % : %.o  libauxiliar.o libpansharpening.o
	$(CXX)  -std=c++98  -o $@  $^ $(LDFLAGS)

.PHONY : clean
clean:
	$(RM) $(CXXOBJ) ; rm $(BIN)
