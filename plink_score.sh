#PBS -lselect=1:ncpus=32:mem=124gb
#PBS -lwalltime=72:00:00

$PBS_O_WORKDIR

module load anaconda3/personal
source activate prs

module load plink
plink \
--bfile /rds/general/project/lms-ware-analysis/live/sean/prs/HCM/target/UKBB/UKBB_GWAS_MERGE_INCLUDING_RELATED.QC \
--score /rds/general/project/lms-ware-analysis/live/sean/prs/PRScs/HCM/output/posterior_snp_effect_estimates/hcm.mtag.exc.mybpc3.1kg.inc.related.merge.txt 2 4 6 \
--out /rds/general/project/lms-ware-analysis/live/sean/prs/PRScs/HCM/output/scores/PRScs.HCM.MTAG.MYBPC3.UKBB.1KG.LD.INC.RELATED
