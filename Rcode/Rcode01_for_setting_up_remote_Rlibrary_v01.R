#!/usr/bin/env Rscript
# -*- coding: utf-8 -*-


#On the remote server. Ensure you have a directory where your 
#R packages are stored
# make one here:

# mkdir /dpdpsnm/home/knuste/R_packages_for_Rv4_4_0

# load the R module

# $ module load tools
# $ module load gcc/12.2.0
# $ module load intel/basekit/INITIALIZE/2023.0.0
# $ module load intel/basekit/mkl/2023.0.0
# $ module load R/4.4.0

# # I will try installing for Rv4_4
# # Start out by making a directory where all the packages can be placed inside
# $ mkdir R_packages_for_Rv4_4_0
# $ cd R_packages_for_Rv4_4_0/

# # start up R by typing R

# $ R

# ## In R 
# ## Run the lines below without the # sign. The other lines with 2 # signs are helpful comments.
# ## You also need to run each of these lines one by one individually
# # In R you now first need to specify a path to the directory where you want your packages
# # to be available for your R-code
# # Run these lines - changing the path your own directory for where the packages need to be 
# # replace my library path to your own library path
# # You will have to run each line one at a time

# # Run this line in R to specify the path to where you want the packages to placed:

    # lib_path01 <- "/dpdpsnm/home/knuste/R_packages_for_Rv4_4_0"

# # Continue by running these lines, one by one in R
# Sys.setenv(R_LIBS_USER="lib_path01")
# .libPaths("lib_path01")
# # change the path to where the packages should be installed from # see this website: https://stackoverflow.com/questions/15170399/change-r-default-library-path-using-libpaths-in-rprofile-site-fails-to-work
# .libPaths( c( lib_path01 , .libPaths() ) )
# .libPaths()
# .libPaths( c( lib_path01) )

## Or try pasting one long line with all commands, and installation of the 'taxizedb' library #
# lib_path01 <- "/dpdpsnm/home/knuste/R_packages_for_Rv4_4_0"; Sys.setenv(R_LIBS_USER="lib_path01"); .libPaths("lib_path01"); .libPaths( c( lib_path01 , .libPaths() ) ); .libPaths(); .libPaths( c( lib_path01) ); install.packages(c("taxizedb", "taxize", "tidyverse", "readxl", "worms", "stringr", "dplyr"))

# # The 'taxizedb' is only available from the archive. So you will need to download the tarball from the CRAN archive
# ## Download package tarball from CRAN archive
# url <- "http://cran.r-project.org/src/contrib/Archive/taxizedb/taxizedb_0.3.1.tar.gz"
# pkgFile <- "taxizedb_0.3.1.tar.gz"
# download.file(url = url, destfile = pkgFile)
# # Expand the zip file using whatever system functions are preferred
# # look at the DESCRIPTION file in the expanded package directory
# # Install dependencies list in the DESCRIPTION file
# #install.packages(c("ada", "ipred", "evd"))
# # Install package
# lib_path01 <- "/dpdpsnm/home/knuste/R_packages_for_Rv4_4_0"; Sys.setenv(R_LIBS_USER="lib_path01"); .libPaths("lib_path01"); .libPaths( c( lib_path01 , .libPaths() ) ); .libPaths(); .libPaths( c( lib_path01) );  install.packages(pkgs=pkgFile, type="source", repos=NULL)
# # Delete package tarball
# unlink(pkgFile)
# 
# # The 'taxizedb' is only available from the archive. So you will need to download the tarball from the CRAN archive
# ## Download package tarball from CRAN archive
# url <- "http://cran.r-project.org/src/contrib/Archive/taxize/taxize_0.9.100.1.tar.gz"
# pkgFile <- "taxize_0.9.100.1.tar.gz"
# download.file(url = url, destfile = pkgFile)
# # Expand the zip file using whatever system functions are preferred
# # look at the DESCRIPTION file in the expanded package directory
# # Install dependencies list in the DESCRIPTION file
# #install.packages(c("ada", "ipred", "evd"))
# # Install package
# lib_path01 <- "/dpdpsnm/home/knuste/R_packages_for_Rv4_4_0"; Sys.setenv(R_LIBS_USER="lib_path01"); .libPaths("lib_path01"); .libPaths( c( lib_path01 , .libPaths() ) ); .libPaths(); .libPaths( c( lib_path01) );  install.packages(pkgs=pkgFile, type="source", repos=NULL)
# # Delete package tarball
# unlink(pkgFile)


## Use this line here below to install a lot of packages needed for doing population genetic analysis
# lib_path01 <- "/dpdpsnm/home/knuste/R_packages_for_Rv4_4_0"; Sys.setenv(R_LIBS_USER="lib_path01"); .libPaths("lib_path01"); .libPaths( c( lib_path01 , .libPaths() ) ); .libPaths(); .libPaths( c( lib_path01) ); if(!require("gaston")){install.packages("gaston", dependencies = TRUE, INSTALL_opts = '--no-lock')};if(!require("hierfstat")){install.packages("hierfstat", dependencies = TRUE, INSTALL_opts = '--no-lock')};if(!require("pegas")){install.packages("pegas")};if(!require("ips")){install.packages("ips", dependencies = TRUE, INSTALL_opts = '--no-lock')};if(!require("tidyverse")){install.packages("tidyverse", dependencies = TRUE, INSTALL_opts = '--no-lock')};if(!require("pals")){install.packages("pals", dependencies = TRUE, INSTALL_opts = '--no-lock')};if(!require(adegenet)){install.packages("adegenet", repos='http://cran.us.r-project.org') };if(!require(apex)){install.packages("apex", repos='http://cran.us.r-project.org') };if(!require(mmod)){install.packages("mmod", repos='http://cran.us.r-project.org') };if(!require(tidyverse)){install.packages("tidyverse", repos='http://cran.us.r-project.org') };if(!require(pals)){install.packages("pals", repos='http://cran.us.r-project.org') };if(!require(ape)){install.packages("ape", repos='http://cran.us.r-project.org') };if(!require(RColorBrewer)) {install.packages("RColorBrewer", repos='http://cran.us.r-project.org') };if(!require(stringi)){install.packages("stringi", repos='http://cran.us.r-project.org') };if(!require(poppr)){install.packages("poppr", repos='http://cran.us.r-project.org') };if(!require(vegan)){install.packages("vegan", repos='http://cran.us.r-project.org')};if(!require(adegenet)){install.packages("adegenet", repos='http://cran.us.r-project.org')}
## Use this line here below to install a lot of packages needed for doing mapping
# lib_path01 <- "/dpdpsnm/home/knuste/R_packages_for_Rv4_4_0"; Sys.setenv(R_LIBS_USER="lib_path01"); .libPaths("lib_path01"); .libPaths( c( lib_path01 , .libPaths() ) ); .libPaths(); .libPaths( c( lib_path01) ); if(!require(scales)){  install.packages("scales")};if(!require(fields)){  install.packages("fields")};if(!require(marmap)){  install.packages("marmap")};if(!require(TeachingDemos)){  install.packages("TeachingDemos")};if(!require(rworldmap)){  install.packages("rworldmap")};if(!require(rworldxtra)){  install.packages("rworldxtra")};require(rworldxtra);if(!require(readxl)){  install.packages("readxl")};if(!require(plyr)){  install.packages("plyr")};if(!require(mapdata)){  install.packages("mapdata")};if(!require(maps)){  install.packages("maps")};if(!require(mapplots)){  install.packages("mapplots")}; if(!require(purrr)){  install.packages("purrr")}

# ## In R 
# ## Run the lines below without the # sign. The other lines with 2 # signs are helpful comments.
# ## You also need to run each of these lines one by one individually


# install.packages(c("latticeExtra")) # Not available for R v3.4.1
# install.packages(c("robustbase")) # Not available for R v3.4.1
# install.packages(c("lessR")) # Not available for R v3.4.1
# install.packages(c("readr"))
# install.packages(c("dada2")) # Not available for R v3.4.1 and not for R v4.0.2
# install.packages(c("dada2", "readr", "dplyr", "taxize", "tidyr"))
# install.packages(c("taxizedb"))
# install.packages(c("ShortRead")) #Not available for R v3.4.1
# install.packages(c("taxize")) # Dependent on 'wikitaxa' which is Not available for R v3.4.1
# install.packages(c("tidyverse"))

# ## Note that this might exit with an error message . Read on for the next instructions below:

# ## As I had difficulties getting the 'dada2' package installed on the remote path
# ## I tried to look for solutions 
# ## I then looked up the 'dada2' package for R on the internet here:
# ## https://www.bioconductor.org/packages/release/bioc/html/dada2.html
# ## and this webpage recommended that I ran these two commands (again running one line at a time)
# ## You will "ShortRead" installed before you can install "dada2". Use "BiocManager" to install both
# ## First start with: "BiocManager"
# if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
# BiocManager::install("ShortRead")
# BiocManager::install("dada2")

# ## This should get your 'dada2' package installed
# ## Check that R finishes without errors on packages 
# ## It might be that it instead finishes with a warning message. This is okay. As long as you are not getting an error message.
# ## It might be that some packages fail, but as long as you get "dada2" and "readr" and "BiocManager" installed without
# ## error I think it is just fine
# ## Now quit R 

# ## Now that you have installed all packages in your remote path : "/dpdpsnm/home/knuste/R_packages_for_Rv4_4_0"
# # You are almost ready to run parts of the code together with their matching slurm sbatch submission scripts

# specify a path to where you have all your packages on your remote node
# NOTICE ! In order to have your packages available on the remote path, you will need to logon to your node, 
# and make a directory 
# called -e.g. : R_packages_for_Rv4_0_2
# Then load the R module
# module load R/v4.0.2
# Then start R byt typing:
# R
# Once R is started run the lines here below in section 01
# #_______________start section 01__________________________________________ 
# replace my library path to your own library path
#lib_path01 <- "/groups/hologenomics/phq599/data/R_packages_for_Rv3_6"
lib_path01 <- "/dpdpsnm/home/knuste/R_packages_for_Rv4_4_0"
Sys.setenv(R_LIBS_USER="lib_path01")
.libPaths("lib_path01")
# change the path to where the packages should be installed from # see this website: https://stackoverflow.com/questions/15170399/change-r-default-library-path-using-libpaths-in-rprofile-site-fails-to-work
.libPaths( c( lib_path01 , .libPaths() ) )
.libPaths()
# #_______________end section 01__________________________________________
## You  will need to specify this path again later on when you are to run this R-script
## Before you can start this R-script on the remote server you will need to install the pacakges here


# download the NCBI database

#R

#library("taxizedb")

#db_download_ncbi() 