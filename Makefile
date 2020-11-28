PAGES = $(wildcard pages/*.pdf)

pdfs:
	for number in pages/*.svg ; do \
        	./make_pdf.sh $$number ; \
   	done

topo: pdfs
	pdfunite pages/*.pdf ./topo.pdf

clean:
	rm -f pages/*.pdf
