#PBS -lselect=1:ncpus=32:mem=124gb
#PBS -lwalltime=72:00:00

$PBS_O_WORKDIR

module load anaconda3/personal
source activate prs

python /rds/general/project/lms-ware-analysis/live/sean/prs/PRScs/PRScs.py \
--ref_dir=/rds/general/project/lms-ware-analysis/live/sean/prs/PRScs/1kg_reference/ldblk_1kg_eur \
--bim_prefix=/rds/general/project/lms-ware-analysis/live/sean/prs/HCM/target/UKBB/UKBB_GWAS_MERGE_INCLUDING_RELATED.QC \
--sst_file=/rds/general/project/lms-ware-analysis/live/sean/gwama_sum_stats/HCM_MTAG/HCM_MTAG.QC.prscs.format.exc.mybpc3.txt \
--n_gwas=74259 \
--out_dir=/rds/general/project/lms-ware-analysis/live/sean/prs/PRScs/HCM/output/posterior_snp_effect_estimates/hcm.mtag.exc.mybpc3.1kg.ld.inc.related