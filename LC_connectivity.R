
library(dplyr)
library(coconatfly)
library(fafbseg)
library(nat.nblast)

lc_ids = cf_ids('LC11', datasets = c("flywire"))

lc_metadata=cf_meta(lc_ids)

lc_downstream=cf_partners(lc_ids, threshold=5, partners='output') %>% group_by(type)


lc_downstream %>% group_by(type, dataset, side)

conn_summary <- lc_downstream %>% summarise(weight=sum(weight), npre=n_distinct(pre_id), npost=n_distinct(post_id))

