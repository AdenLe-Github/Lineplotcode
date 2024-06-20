row_headers_eif1 <- "EIF1"
row_headers_ddx3x <- "DDX3X"
row_headers_eif2b5 <- "EIF2B5"
row_headers_ythdf1 <- "YTHDF1"
row_headers_rpl5 <- "RPL5"
row_headers_hnrnpc <- "HNRNPC"
row_headers_rps19 <- "RPS19"
row_headers_arntl <- "ARNTL"

col_headers_eif1 <- c("GSM2327826", "GSM2327828")
control_eif1 <- c("notcontrol", "control")

col_headers_ddx3x <- c("GSM4258310", "GSM4258311", "GSM4258312", "GSM4258314", "GSM4258315", "GSM4258316", "GSM4258317", "GSM4258319", "GSM4258290", "GSM4258295", "GSM4258296", "GSM4258297")
control_ddx3x <- c("control", "control", "control", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "control", "notcontrol", "notcontrol", "notcontrol")

col_headers_eif2b5 <- c("GSM2883304", "GSM2883305", "GSM2883306", "GSM2883307", "GSM2883313", "GSM2883314", "GSM2883315", "GSM2883320", "GSM2883321", "GSM2883322", "GSM2883323")
control_eif2b5 <- c("control", "notcontrol", "control", "notcontrol", "notcontrol", "control", "notcontrol", "control", "notcontrol", "control", "notcontrol")

col_headers_ythdf1 <- c("GSM4054749", "GSM4054750", "GSM4054751")
control_ythdf1 <- c("notcontrol", "notcontrol", "control")

col_headers_rpl5 <- c("GSM2360175", "GSM2360176", "GSM2360179", "GSM2360180")
control_rpl5 <- c("notcontrol", "notcontrol", "control", "control")

col_headers_hnrnpc <- c("GSM2204389", "GSM2204390", "GSM2204391", "GSM2204392", "GSM2204393", "GSM2204394", "GSM2204395", "GSM2204396")
control_hnrnpc <- c("control", "control", "control", "control", "notcontrol", "notcontrol", "notcontrol", "notcontrol")

col_headers_rps19 <- c("GSM2360175", "GSM2360176", "GSM2360177", "GSM2360178")
control_rps19 <- c("notcontrol", "notcontrol", "control", "control")

col_headers_arntl <- c("GSM1371443", "GSM1371444", "GSM1371445", "GSM1371446", "GSM1371447", "GSM1371448", "GSM1371449", "GSM1371450", "GSM1371451", "GSM1371452", "GSM1371453", "GSM1371455", "GSM1371456", "GSM1371457", "GSM1371458", "GSM1371459", "GSM1371460", "GSM1371461", "GSM1371462", "GSM1371463", "GSM1371464", "GSM1371465", "GSM1371466", "GSM1371467", "GSM1371468", "GSM1371469", "GSM1371470", "GSM1371471", "GSM1371472", "GSM1371473", "GSM1371474", "GSM1371475", "GSM1371476", "GSM1371477", "GSM1371478", "GSM1371479", "GSM1371480", "GSM1371481", "GSM1371482", "GSM1371483", "GSM1371484", "GSM1371485", "GSM1371486", "GSM1371487", "GSM1371488", "GSM1371489", "GSM1371490")
control_arntl <- c("control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "control", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol", "notcontrol")

data_eif1 <- create_gene_data("eif1", col_headers_eif1, row_headers_eif1, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_eif1)
data_ddx3x <- create_gene_data("ddx3x", col_headers_ddx3x, row_headers_ddx3x, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_ddx3x)
data_eif2b5 <- create_gene_data("eif2b5", col_headers_eif2b5, row_headers_eif2b5, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_eif2b5)
data_ythdf1 <- create_gene_data("ythdf1", col_headers_ythdf1, row_headers_ythdf1, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_ythdf1)
data_rpl5 <- create_gene_data("rpl5", col_headers_rpl5, row_headers_rpl5, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_rpl5)
data_hnrnpc <- create_gene_data("hnrnpc", col_headers_hnrnpc, row_headers_hnrnpc, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_hnrnpc)
data_rps19 <- create_gene_data("rps19", col_headers_rps19, row_headers_rps19, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_rps19)
data_arntl <- create_gene_data("arntl", col_headers_arntl, row_headers_arntl, Ribosomeprofiling, RNAsequencing, Translationefficiency, control_arntl)

summary_data_eif1 <- calculate_summary(data_eif1, "eif1")
summary_data_ddx3x <- calculate_summary(data_ddx3x, "ddx3x")
summary_data_eif2b5 <- calculate_summary(data_eif2b5, "eif2b5")
summary_data_ythdf1 <- calculate_summary(data_ythdf1, "ythdf1")
summary_data_rpl5 <- calculate_summary(data_rpl5, "rpl5")
summary_data_hnrnpc <- calculate_summary(data_hnrnpc, "hnrnpc")
summary_data_rps19 <- calculate_summary(data_rps19, "rps19")
summary_data_arntl <- calculate_summary(data_arntl, "arntl")

colnames(summary_data_eif1) <- c("Control", "RNAseq", "Riboprof", "Transeff")
colnames(summary_data_ddx3x) <- c("Control", "RNAseq", "Riboprof", "Transeff")
colnames(summary_data_eif2b5) <- c("Control", "RNAseq", "Riboprof", "Transeff")
colnames(summary_data_ythdf1) <- c("Control", "RNAseq", "Riboprof", "Transeff")
colnames(summary_data_rpl5) <- c("Control", "RNAseq", "Riboprof", "Transeff")
colnames(summary_data_hnrnpc) <- c("Control", "RNAseq", "Riboprof", "Transeff")
colnames(summary_data_rps19) <- c("Control", "RNAseq", "Riboprof", "Transeff")
colnames(summary_data_arntl) <- c("Control", "RNAseq", "Riboprof", "Transeff")

combined_data <- rbind(
  cbind(summary_data_eif1, Gene = "EIF1", Bufferingscore = "3"),
  cbind(summary_data_ddx3x, Gene = "DDX3X", Bufferingscore = "3"),
  cbind(summary_data_eif2b5, Gene = "EIF2B5", Bufferingscore = "0"),
  cbind(summary_data_ythdf1, Gene = "YTHDF1", Bufferingscore = "0"),
  cbind(summary_data_rpl5, Gene = "RPL5", Bufferingscore = "4"),
  cbind(summary_data_hnrnpc, Gene = "HNRNPC", Bufferingscore = "3"),
  cbind(summary_data_rps19, Gene = "RPS19", Bufferingscore = "3"),
  cbind(summary_data_arntl, Gene = "ARNTL", Bufferingscore = "0"))

