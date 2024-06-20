import csv

def generate_row_header(gene):
    return f'row_headers_{gene.lower()} <- "{gene}"\n'

def generate_col_headers(gene, col_headers):
    col_headers_str = ', '.join(f'"{header}"' for header in col_headers)
    return f'col_headers_{gene.lower()} <- c({col_headers_str})\n'

def generate_control(gene, control):
    control_str = ', '.join(f'"{ctrl}"' for ctrl in control)
    return f'control_{gene.lower()} <- c({control_str})\n'

def generate_create_gene_data(gene, col_headers, row_headers):
    return f'data_{gene.lower()} <- create_gene_data("{gene.lower()}", col_headers_{gene.lower()}, row_headers_{gene.lower()}, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_{gene.lower()})\n'

def generate_calculate_summary(gene):
    return f'summary_data_{gene.lower()} <- calculate_summary(data_{gene.lower()}, "{gene.lower()}")\n'

# Define your main function
def main():
    myfile = "Megagraphexport.csv"
    outfile = "generated_r_code.R"
    data_list = []

    # Read the CSV file and extract the data
    with open(myfile, mode='r') as file:
        csv_reader = csv.DictReader(file)
        for row in csv_reader:
            gene = row['Gene'].strip()
            buffering_score = row['Buffering Score'].strip()
            gsm_codes = [code.strip() for code in row['GSM Codes'].split(", ")]
            control = [c.strip() for c in row['Control'].split(", ")]
            data_list.append((gene, buffering_score, gsm_codes, control))

    # Generate R code based on the extracted data
    r_code = ""

    # Generate row headers
    for gene, _, _, _ in data_list:
        r_code += generate_row_header(gene)
    r_code += '\n'

    # Generate column headers and control status
    for gene, _, gsm_codes, control in data_list:
        r_code += generate_col_headers(gene, gsm_codes)
        r_code += generate_control(gene, control)
        r_code += '\n'

    # Generate create gene data for each gene
    for gene, _, gsm_codes, _ in data_list:
        r_code += generate_create_gene_data(gene, gsm_codes, gene)
    r_code += '\n'

    # Generate calculate summary data for each gene
    for gene, _, _, _ in data_list:
        r_code += generate_calculate_summary(gene)
    r_code += '\n'

    # Ensure consistent column names for summary data
    for gene, _, _, _ in data_list:
        r_code += f'colnames(summary_data_{gene.lower()}) <- c("Control", "RNAseq", "Riboprof", "Transeff")\n'
    r_code += '\n'

    # Combine data for all genes into one data frame
    combined_data_code = 'combined_data <- rbind(\n'
    for gene, buffering_score, _, _ in data_list:
        combined_data_code += f'  cbind(summary_data_{gene.lower()}, Gene = "{gene.upper()}", Bufferingscore = "{buffering_score}"),\n'
    combined_data_code = combined_data_code.rstrip(',\n') + ')\n\n'
    r_code += combined_data_code

    # Write the generated R code to a file
    with open(outfile, 'w') as file:
        file.write(r_code)

main()
