TARGET=`basename ${PWD}`.zip

clean:
	rm -f ${TARGET}

commit:
	git add .
	git commit

zip: clean
	zip -r ${TARGET} twentyfourteen-child/* 

all: clean commit zip
