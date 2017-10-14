report.pdf: report.dvi
	dvipdfmx report.dvi
report.dvi: report.tex
	platex report.tex
report.tex: report.md
	pandoc report.md --from=markdown+east_asian_line_breaks --filter=pandoc-crossref --output=report.tex --template=template.tex --number-sections
.PHONY: clean
clean:
	rm report.{pdf,tex,aux,dvi,out,log}
