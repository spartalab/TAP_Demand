base = read.table(file='Austin_sdb_attr.txt', sep=",", dec=".", header=TRUE)


S1a = base
S1a$a_rn= S1a$a_rn + 5
S1a$a_rnE= S1a$a_rnE + 5

S1b = base
S1b$a_rn= S1b$a_rn + 10
S1b$a_rnE= S1b$a_rnE + 10

S1c = base
S1c$a_rn= S1c$a_rn + 15
S1c$a_rnE= S1c$a_rnE + 15

S1d = base
S1d$a_rn= S1d$a_rn - 5
S1d$a_rnE= S1d$a_rnE - 5

write_delim(x=S1a, file = "Austin_sdb_attr_S1a.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S1b, file = "Austin_sdb_attr_S1b.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S1c, file = "Austin_sdb_attr_S1c.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S1d, file = "Austin_sdb_attr_S1d.txt", delim=",", append = FALSE, eol = "\n")



my_data_inc = read.table(file='low_income_tracts', sep=",", dec=".", header=TRUE)

base2 = merge(base,my_data_inc, by.x='dest_geoid', by.y='data.GEOID')

S2a = base2
S2a$a_rs = S2a$a_rs + S2a$inc*5
S2a$a_rsE = S2a$a_rsE + S2a$inc*5
S2a$a_rsSC = S2a$a_rsSC + S2a$inc*5
S2a = subset(S2a, select=-inc)
S2a <- S2a %>% select(origin,origin_x,origin_y,origin_geoid,destination,dest_x,dest_y,dest_geoid,FIXEDdemand,k_rs,P_r,P_r_aug,tel,a_rs,a_rn,a_rsE,a_rnE,a_rsSC)

S2b = base2
S2b$a_rs = S2b$a_rs + S2b$inc*10
S2b$a_rsE = S2b$a_rsE + S2b$inc*10
S2b$a_rsSC = S2b$a_rsSC + S2b$inc*10
S2b = subset(S2b, select=-inc)
S2b <- S2b %>% select(origin,origin_x,origin_y,origin_geoid,destination,dest_x,dest_y,dest_geoid,FIXEDdemand,k_rs,P_r,P_r_aug,tel,a_rs,a_rn,a_rsE,a_rnE,a_rsSC)

S2c = base2
S2c$a_rs = S2c$a_rs + S2c$inc*15
S2c$a_rsE = S2c$a_rsE + S2c$inc*15
S2c$a_rsSC = S2c$a_rsSC + S2c$inc*15
S2c = subset(S2c, select=-inc)
S2c <- S2c %>% select(origin,origin_x,origin_y,origin_geoid,destination,dest_x,dest_y,dest_geoid,FIXEDdemand,k_rs,P_r,P_r_aug,tel,a_rs,a_rn,a_rsE,a_rnE,a_rsSC)

S2d = base2
S2d$a_rs = S2d$a_rs + S2d$inc*(-5)
S2d$a_rsE = S2d$a_rsE + S2d$inc*(-5)
S2d$a_rsSC = S2d$a_rsSC + S2d$inc*(-5)
S2d = subset(S2d, select=-inc)
S2d <- S2d %>% select(origin,origin_x,origin_y,origin_geoid,destination,dest_x,dest_y,dest_geoid,FIXEDdemand,k_rs,P_r,P_r_aug,tel,a_rs,a_rn,a_rsE,a_rnE,a_rsSC)

write_delim(x=S2a, file = "Austin_sdb_attr_S2a.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S2b, file = "Austin_sdb_attr_S2b.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S2c, file = "Austin_sdb_attr_S2c.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S2d, file = "Austin_sdb_attr_S2d.txt", delim=",", append = FALSE, eol = "\n")



my_data_cbd1 = read.table(file='Austin CBD large.txt', sep=",", dec=".", header=TRUE)
my_data_cbd = data.frame(GEOID = my_data_inc$data.GEOID)
my_data_cbd$cbd = ifelse(my_data_cbd$GEOID %in% my_data_cbd1$Tracts_large, 1, 0)

base3 = merge(base,my_data_cbd, by.x='dest_geoid', by.y='GEOID')

S3a = base3
S3a$a_rs = S3a$a_rs + S3a$cbd*5
S3a$a_rsE = S3a$a_rsE + S3a$cbd*5
S3a$a_rsSC = S3a$a_rsSC + S3a$cbd*5
S3a = subset(S3a, select=-cbd)
S3a <- S3a %>% select(origin,origin_x,origin_y,origin_geoid,destination,dest_x,dest_y,dest_geoid,FIXEDdemand,k_rs,P_r,P_r_aug,tel,a_rs,a_rn,a_rsE,a_rnE,a_rsSC)

S3b = base3
S3b$a_rs = S3b$a_rs + S3b$cbd*(-5)
S3b$a_rsE = S3b$a_rsE + S3b$cbd*(-5)
S3b$a_rsSC = S3b$a_rsSC + S3b$cbd*(-5)
S3b = subset(S3b, select=-cbd)
S3b <- S3b %>% select(origin,origin_x,origin_y,origin_geoid,destination,dest_x,dest_y,dest_geoid,FIXEDdemand,k_rs,P_r,P_r_aug,tel,a_rs,a_rn,a_rsE,a_rnE,a_rsSC)

S3c = base3
S3c$a_rs = S3c$a_rs + S3c$cbd*(-10)
S3c$a_rsE = S3c$a_rsE + S3c$cbd*(-10)
S3c$a_rsSC = S3c$a_rsSC + S3c$cbd*(-10)
S3c = subset(S3c, select=-cbd)
S3c <- S3c %>% select(origin,origin_x,origin_y,origin_geoid,destination,dest_x,dest_y,dest_geoid,FIXEDdemand,k_rs,P_r,P_r_aug,tel,a_rs,a_rn,a_rsE,a_rnE,a_rsSC)

S3d = base3
S3d$a_rs = S3d$a_rs + S3d$cbd*(-15)
S3d$a_rsE = S3d$a_rsE + S3d$cbd*(-15)
S3d$a_rsSC = S3d$a_rsSC + S3d$cbd*(-15)
S3d = subset(S3d, select=-cbd)
S3d <- S3d %>% select(origin,origin_x,origin_y,origin_geoid,destination,dest_x,dest_y,dest_geoid,FIXEDdemand,k_rs,P_r,P_r_aug,tel,a_rs,a_rn,a_rsE,a_rnE,a_rsSC)

write_delim(x=S3a, file = "Austin_sdb_attr_S3a.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S3b, file = "Austin_sdb_attr_S3b.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S3c, file = "Austin_sdb_attr_S3c.txt", delim=",", append = FALSE, eol = "\n")
write_delim(x=S3d, file = "Austin_sdb_attr_S3d.txt", delim=",", append = FALSE, eol = "\n")

