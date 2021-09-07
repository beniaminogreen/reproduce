# document.pdf depends on document.Rmd and ./data/cars.csv.
# When either of the dependencies change, re-render the document
document.pdf: document.Rmd ./data/cars.csv
	R -e "require(rmarkdown); render('document.Rmd')"

# ./data/cars.csv depends on ./code/01_example_script.R.
# When 01_example_script.R changes, rerun it with R.
./data/cars.csv: ./code/01_example_script.R
	cd code; R CMD BATCH --vanilla 01_example_script.R

