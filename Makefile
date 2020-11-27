PAGES = $(wildcard pages/*.pdf)

pdfs:
	./make_pdf.sh pages/00_cover
	./make_pdf.sh pages/secteur_racaille_00
	./make_pdf.sh pages/secteur_racaille_01
	./make_pdf.sh pages/secteur_racaille_02
	./make_pdf.sh pages/secteur_racaille_03
	./make_pdf.sh pages/secteur_monument_01
	./make_pdf.sh pages/secteur_monument_02
	./make_pdf.sh pages/secteur_monument_03
	./make_pdf.sh pages/secteur_monument_04
	./make_pdf.sh pages/secteur_voltige_00
	./make_pdf.sh pages/secteur_voltige_01
	./make_pdf.sh pages/secteur_voltige_02
	./make_pdf.sh pages/secteur_voltige_03
	./make_pdf.sh pages/secteur_voltige_04

topo: pdfs
	pdfunite pages/*.pdf ./topo.pdf

clean:
	rm -f pages/*.pdf
