tmp/model_0.rds: scripts/script_0.R bayeslmm/data/sleepstudy_df.rda
	Rscript scripts/script_0.R
	
tmp/model_1.rds: scripts/script_1.R bayeslmm/data/sleepstudy_df.rda
	Rscript scripts/script_1.R

reports/report.pdf: reports/report.Rmd tmp/model_0.rds tmp/model_1.rds bayeslmm/data/sleepstudy_df.rda
	Rscript -e 'rmarkdown::render("reports/report.Rmd")'

bayeslmm/data/sleepstudy_df.rda: raw_data/make_data.R
	Rscript raw_data/make_data.R

clean:
	rm -f reports/report.pdf
	rm -f reports/report.tex
	rm -f tmp/model_0.rds
	rm -f tmp/model_1.rds
