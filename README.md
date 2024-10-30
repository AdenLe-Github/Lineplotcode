# megagraphcode

# Project Instructions

## Steps

1. **Log GSM Codes**  
   - Use `gsmwriter.py` to record the utilized GSM codes, categorizing each code as either "control" or "notcontrol."

2. **Format Data in CSV**  
   - Manually enter the GSM codes and their groups into `Grouped_line_plotImport.csv`.  
   - If any formatting issues arise, perform manual debugging or corrections as needed.
   - Follow the formatting example provided in the CSV file.

3. **Run Data Extraction Script**  
   - Run `extractor.py`, which will generate the necessary R code for the graph and output it in `generated_r_code.R`.

4. **Create the Graph**  
   - Copy the R code from `generated_r_code.R` and paste it into `Grouped_Line_GraphCode.R`.
   - Execute the code to create the grouped line graph.
